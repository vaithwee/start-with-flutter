typedef void EventCallback(arg);

class EventBus {
	EventBus._internal();
	
	static EventBus _instance = new EventBus._internal();
	
	factory EventBus() => _instance;
	
	var _emap = new Map<Object, List<EventCallback>>();
	
	void on(eventName, EventCallback f) {
		if (eventName == null || f == null) return;
		_emap[eventName]??= new List<EventCallback>();
		_emap[eventName].add(f);
	}
	
	void off(eventName, EventCallback f) {
		var list = _emap[eventName];
		if (list == null || eventName == null) return;
		if (f == null) {
			_emap[eventName] = null;
		} else {
			list.remove(f);
		}
	}
	
	void emit(eventName, [arg]) {
		var list = _emap[eventName];
		if (list == null) return;
		for (int i = list.length -1; i >= 0; --i) {
			list[i](arg);
		}
	}
	
}

var bus = new EventBus();