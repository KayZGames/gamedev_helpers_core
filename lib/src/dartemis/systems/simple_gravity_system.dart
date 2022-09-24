import 'package:dartemis/dartemis.dart';

import '../components.dart';

part 'simple_gravity_system.g.dart';

@Generate(
  EntityProcessingSystem,
  allOf: [
    Acceleration,
    Mass,
  ],
)
class SimpleGravitySystem extends _$SimpleGravitySystem {
  @override
  void processEntity(int entity, Acceleration acceleration, Mass mass) {
    acceleration.y -= 9.81 * world.delta;
  }
}
