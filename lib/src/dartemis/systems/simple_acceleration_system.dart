import 'package:dartemis/dartemis.dart';

import '../components.dart';

part 'simple_acceleration_system.g.dart';

@Generate(
  EntityProcessingSystem,
  allOf: [
    Acceleration,
  ],
)
class ResetAccelerationSystem extends _$ResetAccelerationSystem {
  @override
  void processEntity(int entity, Acceleration acceleration) {
    acceleration
      ..x = 0.0
      ..y = 0.0;
  }
}

@Generate(
  EntityProcessingSystem,
  allOf: [
    Acceleration,
    Velocity,
  ],
)
class SimpleAccelerationSystem extends _$SimpleAccelerationSystem {
  @override
  void processEntity(int entity, Acceleration acceleration, Velocity velocity) {
    velocity
      ..x += acceleration.x * world.delta
      ..y += acceleration.y * world.delta;
  }
}
