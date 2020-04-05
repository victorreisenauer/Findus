# lrs_app_v3

The third version of the LRS App. 

To not get stuck up in the spaghetti architecture, we make use of the Domain-Driven Design principles.

Those principles are outlined in the following course:
 https://resocoder.com/2020/03/09/flutter-firebase-ddd-course-1-domain-driven-design-principles/

 Credits to this guy :)

 All logic in the architectual 'application layer' are implemented in BLoCs, which work with States and Events in the 'presentation layer'. 
 The flutter_bloc package is used for this (no use of "ChangeNotifier" etc).

## Layers outline:

 Presentation layer: 
 Whenever some logic operates with data that is later on sent to a server or persisted in a local database, that logic has nothing to do in the presentation layer

 Application layer:
 You aren't going to find any UI code, network code, or database code here. Application layer has only one job - orchestrating all of the other layers. No matter where the data originates (user input, real-time Firestore Stream, device location), its first destination is going to be the application layer.

 The role of the application layer is to decide "what to do next" with the data. It doesn't perform any complex business logic, instead, it mostly just makes sure that the user input is validated (by calling things in the domain layer) or it manages subscriptions to infrastructure data Streams (not directly, but by utilizing the dependency inversion principle, more on that later).

Domain layer:
The domain layer is the pristine center of an app. It is fully self contained and it doesn't depend on any other layers. Domain is not concerned with anything but doing its own job well.

On the other hand, all the other layers do depend on domain. This makes us independent of all data sources. 
The domain layer is used for:
- Validating data and keeping it valid with ValueObjects
- Transforming data (e.g. make any color fully opaque).
- Grouping and uniquely identifying data that belongs together through Entity classes
- Performing complex business logic (not including the evalutation of data based on the users lesson results. This happens on our server.)
- Being the home of failures (handles all exceptions)

Infrastructure layer:
The infrastructure layer is composed of two parts - low-level data sources and high level repositories. Additionally, this layer holds data transfer objects (DTOs). It deals with APIs, Firebase libraries, databases and device sensors.



Things to keep in mind:

Facade:
used for connecting two or more interfaces into one unified interface. It is on the same layer level as Repositories, so it should not let any Exceptions permittate to "higher" layers.

Freezed:
Freezed is a package that helps create data classes (as known from Cotlin) to reduce boilerplate code. Run 'flutter pub run build_runner watch --delete-conflicting-outputs' to create/rebuild classes with the @freeze property. More on freeze here: https://resocoder.com/2020/02/11/freezed-data-class-union-in-one-dart-package/

