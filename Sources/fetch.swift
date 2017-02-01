import Async
import Foundation

public func Fetch(_ url: URL) -> Task<Data?>
{
	return async { (asyncTask: Task<Data?>) in
		let urlRequest: NSMutableURLRequest = NSMutableURLRequest(url: url)
		let session = URLSession.shared
		var result: Data? = nil
		let task = session.dataTask(with: urlRequest as URLRequest) {
			(data, response, error) -> Void in
			result = data
			Async.Wake(asyncTask)
		}

		DispatchQueue.global().async {
			task.resume()
		}

		Async.Suspend()
		return result
	}
}
