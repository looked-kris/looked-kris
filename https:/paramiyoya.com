<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>mi amor por ti mi pechocha🥰</title>
    <style>
        body {
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh;
            background-color: #f0f0f0;
            font-family: Arial, sans-serif;
            overflow: hidden;
        }
        .corazon {
            position: relative;
            width: 100px;
            height: 100px;
            background-color: red;
            transform: rotate(-45deg);
            margin-bottom: 20px;
            z-index: 1; /* Asegura que el corazón esté en una capa inferior */
        }
        .corazon::before,
        .corazon::after {
            content: '';
            position: absolute;
            width: 100px;
            height: 100px;
            background-color: red;
            border-radius: 50%;
        }
        .corazon::before {
            top: -50px;
            left: 0;
        }
        .corazon::after {
            left: 50px;
            top: 0;
        }
        .texto {
            position: absolute;
            top: 50%; /* Centrado verticalmente */
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
            text-align: center;
            font-size: 15px;
            z-index: 2; /* Asegura que el texto esté en una capa superior */
        }
        .texto-grande {
            font-size: 40px;
            color: red;
            text-align: center;
            margin-top: 20px;
        }
        .kitofer {
            font-size: 50px;
            color: red;
            text-align: center;
            margin-top: 20px;
            display: none; /* Oculto por defecto */
        }
        .boton {
            padding: 10px 20px;
            background-color: blue;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            margin-top: 20px;
        }
    </style>
</head>
<body>

    <div class="corazon">
        <div class="texto">¡mi amor le pertenece a giorgia😝!</div>
    </div>

    <div class="texto-grande">Te quiero mucho!</div>

    <button class="boton" onclick="mostrarKitofer()">Click aquí!</button>
    
    <div class="kitofer" id="kitofer-text">De tu kitofer para ti mi amochito precioso (por cierto, lo di todo en haciendo esto. Aprecialo por que facil de hacer no es😭)</div>

    <script>
        function mostrarKitofer() {
            document.getElementById('kitofer-text').style.display = 'block';
            document.querySelector('.corazon').style.display = 'none';
            document.querySelector('.texto-grande').style.display = 'none';
            document.querySelector('.boton').style.display = 'none';
        }
    </script>

</body>
</html>
