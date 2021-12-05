// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_movement_system.dart';

// **************************************************************************
// SystemGenerator
// **************************************************************************

abstract class _$SimpleMovementSystem extends EntityProcessingSystem {
  late final Mapper<Velocity> velocityMapper;
  late final Mapper<Position> positionMapper;
  _$SimpleMovementSystem() : super(Aspect.empty()..allOf([Velocity, Position]));
  @override
  void initialize() {
    super.initialize();
    velocityMapper = Mapper<Velocity>(world);
    positionMapper = Mapper<Position>(world);
  }
}
