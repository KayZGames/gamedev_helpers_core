import 'package:dartemis/dartemis.dart';
import 'package:vector_math/vector_math_64.dart';

import '../components.dart';
import 'camera_manager.dart';

part 'view_projection_matrix_manager.g.dart';

@Generate(
  Manager,
  mapper: [
    Position,
    Camera,
  ],
  manager: [
    CameraManager,
  ],
)
class ViewProjectionMatrixManager extends _$ViewProjectionMatrixManager {
  Matrix4 create2dViewProjectionMatrix(int cameraEntity) {
    final position = positionMapper[cameraEntity];
    final camera = cameraMapper[cameraEntity];
    return create2dViewProjectionMatrixForPosition(
        position.x, position.y, camera.zoom);
  }

  Matrix4 create2dViewProjectionMatrixForPosition(
      double x, double y, double zoom) {
    final twodOrthographicMatrix = Matrix4.identity();
    final width = cameraManager.width * zoom;
    final height = cameraManager.height * zoom;
    setOrthographicMatrix(twodOrthographicMatrix, x - width / 2, x + width / 2,
        y - height / 2, y + height / 2, 1, -1);
    return twodOrthographicMatrix;
  }
}
