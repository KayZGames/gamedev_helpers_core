// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_movement_system.dart';

// **************************************************************************
// SystemGenerator
// **************************************************************************

abstract class _$SimpleMovementSystem extends EntitySystem {
  late final Mapper<Position> positionMapper;
  late final Mapper<Velocity> velocityMapper;
  _$SimpleMovementSystem() : super(Aspect.empty()..allOf([Position, Velocity]));
  @override
  void initialize() {
    super.initialize();
    positionMapper = Mapper<Position>(world);
    velocityMapper = Mapper<Velocity>(world);
  }

  @override
  void processEntities(Iterable<int> entities) {
    final positionMapper = this.positionMapper;
    final velocityMapper = this.velocityMapper;
    for (final entity in entities) {
      processEntity(entity, positionMapper[entity], velocityMapper[entity]);
    }
  }

  void processEntity(int entity, Position position, Velocity velocity);
}
