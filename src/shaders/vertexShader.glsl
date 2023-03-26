//uniform mat4 projectionMatrix; // projection matrixは、カメラの視野角、アスペクト比、クリッピング面を表す行列
//uniform mat4 viewMatrix; // view matrixは、カメラの位置、回転、スケールを表す行列
//uniform mat4 modelMatrix; // model matrixは、モデルの位置、回転、スケールを表す行列
//attribute vec3 position; // 頂点の位置

void main() {
    vec4 modelPosition = modelMatrix * vec4(position, 1.0);
    modelPosition.z += sin(modelPosition.x * 10.0) * 0.1;
    vec4 viewPosition = viewMatrix * modelPosition;
    vec4 projectionPosition = projectionMatrix * viewPosition;
    gl_Position = projectionPosition;
}
