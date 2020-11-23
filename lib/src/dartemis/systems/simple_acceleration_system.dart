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
  void processEntity(int entity) {
    accelerationMapper[entity]
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
  void processEntity(int entity) {
    final acceleration = accelerationMapper[entity];
    velocityMapper[entity]
      ..x += acceleration.x * world.delta
      ..y += acceleration.y * world.delta;
  }
}
