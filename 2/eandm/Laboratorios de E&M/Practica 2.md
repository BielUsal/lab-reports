### Apellidos y Nombre:  D'Andrade Furlanetto, Gabriel
---

# Informe de Resultados (Práctica 2: Amperímetros y voltímetros en DC)
---

## 1. Objetivos:

## 2. Realización práctica

### 2.a Material Utilizado

### 2.b Procedimiento Experimental

#### Determinación de la sensibilidad del galvanómetro

- Medida experimental de la sensibilidad del galvanómetro: $I_s = 3.49$ mA; $R_g = 48.9 \Omega$ 

- Comprobación de la linealidad del galvanómetro

| $I$(mA) | Desviación aguja galvanómetro |
| ------- | ----------------------------- |
| 3.49    | 3.5                           |
| 2.99    | 3.0                           |
| 2.49    | 2.5                           |
| 1.99    | 2.0                           |
| 1.49    | 1.5                           |
| 0.99    | 1.0                           |
| 0.49    | 0.5                           |



#### Diseño de un Amperímetro
- Cálculo de la resistencia de shunt haciendo uso de: $R_{p}= R_{g} \frac{I_{s}}{I-I_{s}}$ 6


| $I$   | 0.1mA | 1mA | 10mA | 50mA | 200mA |
| ----- | ----- | --- | ---- | ---- | ----- |
| $R_p$ | 0     | 0   | $26 \Omega$  |$3.67\Omega$ |$0.86\Omega$  |

Ponemos aqui el valor de 0 para valores negativos de la resistencia, que implican que nuestro galvanómetro ya los puede medir apropriadamnte
- Diseño de un amperímetro de fondo de escala $10$mA: $V_{0}=5$V; $R_{p}= 26\Omega$

| $R(\Omega)$ | $I$(mA) | Desviación aguja galvanómetro |
| ----------- | ------- | ----------------------------- |
| 483         | 10.1    | 3.5                           |
| 563         | 8.71    | 3.0                           |
| 690         | 7.15    | 2.5                           |
| 850         | 5.83    | 2.0                           |
| 1150        | 4.33    | 1.5                           |
| 1750        | 2.86    | 1.0                           |
| 3700        | 1.36    | 0.5                              |



- En el circuito de la figura, obtener el valor teórico de $I$:  $I= 10$mA
 ![[Pasted image 20220214180645.png]]
- El valor experimentalmente obtenido con el amperímetro:


| Fondo de escala (mA) | Desviación de la aguja | $I$mA |
| -------------------- | ---------------------- | ----- |
| 10                   | 2.0                    | 5.83  |
| 50                   | 0.65                   |   9.2    |


- Comentar los resultados

#### Diseño de un voltímetro
- Cálculo de la resistencia serie haciendo uso de la ecuación $R_{s}= \frac{V_{max}}{I_{s}} - R_{g}$

 
 | $V_{max}$ | 1v            | 10V            | 20V            | 50V             |
 | --------- | ------------- | -------------- | -------------- | --------------- |
 | $R_s$     | $237.6\Omega$ | $2816.4\Omega$ | $5681.8\Omega$ | $14277.7\Omega$ |

- Diseño de un voltímetro fondo de escala $20$V: $R_{s}=5681.8\Omega$

| $V$(V) | Desviación aguja galvanómetro |
| ------ | ----------------------------- |
| 20     | 3.5                           |
| 16.5   | 3.0                           |
| 14.0   | 2.5                           |
| 11.5   | 2.0                           |
| 8.5    | 1.5                           |
| 6.0    | 1.0                           |
| 3.0    | 0.5                           |

- En el circuito de la figura, obtener el valor teórico de $V_{AB}$: $V_{AB}=5V$

![[Pasted image 20220214181844.png]]

- Y el valor obtenido experimentalmente con el voltímetro

| Fondo de Escala (V) | Desviación aguja galvanómetro | $V_{AB}$ (V) |
| ------------------- | ----------------------------- | ------------ |
| 10                  | 0.8                           | 2.29         |
| 50                  | 0.3                           | 4.3             |

- Comentar los resultados