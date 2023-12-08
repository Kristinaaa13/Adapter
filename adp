# Інтерфейс, який потрібно адаптувати
class Target:
    def request(self):
        return "Target: The default target's behavior."

# Клас, який несумісний з цільовим інтерфейсом
class Adaptee:
    def specific_request(self):
        return "Adaptee: The specific request."

# Адаптер, який адаптує Adaptee до Target
class Adapter(Target):
    def __init__(self, adaptee):
        self.adaptee = adaptee

    def request(self):
        return f"Adapter: {self.adaptee.specific_request()}"

# Використання
adaptee = Adaptee()
adapter = Adapter(adaptee)

print("Client code is designed to work with Target interface:")
print(adapter.request())
