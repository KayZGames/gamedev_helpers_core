import 'package:dartemis/dartemis.dart';

import '../components.dart';

part 'simple_movement_system.g.dart';

@Generate(
  EntityProcessingSystem,
  allOf: [
    Velocity,
    Position,
  ],
)
class SimpleMovementSystem extends _$SimpleMovementSystem {
  @override
  void processEntity(int entity) {
    final velocity = velocityMapper[entity];
    positionMapper[entity]
      ..x += velocity.x * world.delta
      ..y += velocity.y * world.delta;
  }
}
