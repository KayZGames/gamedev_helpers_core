import 'package:dartemis/dartemis.dart';

import '../components.dart';

part 'simple_movement_system.g.dart';

@Generate(
  EntityProcessingSystem,
  allOf: [
    Position,
    Velocity,
  ],
)
class SimpleMovementSystem extends _$SimpleMovementSystem {
  @override
  void processEntity(int entity, Position position, Velocity velocity) {
    position
      ..x += velocity.x * world.delta
      ..y += velocity.y * world.delta;
  }
}
