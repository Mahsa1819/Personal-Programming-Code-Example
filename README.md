# Planar Vibrations System Simulation

This project presents a complete kinematic and dynamic analysis of a multi-degree-of-freedom (MDOF) mechanical system. The system undergoes free oscillations and is subjected to different types of forces, including sinusoidal, step, and rectangular forces. MATLAB is used to simulate the system’s behavior, compute system responses, and visualize the motion.

## 📁 File Structure

| File Name                        | Description                                                   |
|-----------------------------------|---------------------------------------------------------------|
| `vib_free_oscillations.m`         | Simulates free oscillations of the system (no external force).|
| `vib_force_sinusoidal.m`          | Simulates the system’s response to a sinusoidal force input.  |
| `vib_force_step_response.m`       | Simulates the system’s response to a step input force.        |
| `vib_force_rectangular.m`         | Simulates the system’s response to a rectangular force input. |
| `simulation_free_oscillations.m`  | Script to set up and plot the free oscillations simulation.   |
| `simulation_forced_oscillations.m`| Script to set up and plot the forced oscillations simulation. |
| `simulation_forced_rectangular.m` | Script to set up and plot the simulation with rectangular force.|
| `simulation_forced_step.m`        | Script to set up and plot the simulation with step force.     |

## ⚙️ Requirements

- MATLAB R2017b or higher (recommended)
- Optimization Toolbox (for `fsolve` used in dynamic analysis)

## 🚀 How to Run

To run the simulations and analyze the system, follow the steps below:

1. **Open MATLAB.**
2. **Navigate to the project folder** where the files are stored.
3. Run the following scripts depending on the analysis you want to perform:

   For **free oscillations**:
   ```matlab
   simulation_free_oscillations

For forced oscillations with sinusoidal input:

simulation_forced_oscillations

For forced oscillations with rectangular input:

simulation_forced_rectangular

For forced oscillations with step input:

simulation_forced_step

📊 Output

The simulations will generate the following outputs:

    Plots:

        Angular velocities and accelerations of different links.

        Linear velocities and accelerations of points in the mechanism.

        Required input torque for motion.

    Real-time animation showing the motion of the system under various conditions.

📌 Notes

    The system consists of three degrees of freedom and can be subjected to free or forced oscillations.

    Forces: The system can be subjected to sinusoidal, rectangular, or step forces, which are modeled using time-dependent force functions.

    Numerical Methods: The simulations use ode45 (MATLAB's built-in ODE solver) for solving the system's differential equations.

    Input Torque: For dynamic analysis, the required input torque is calculated using numerical methods such as solving nonlinear systems with fsolve.

    Damping and Stiffness: The damping and stiffness matrices are adjusted to simulate various damping conditions.

👩‍💻 Author

Mahsa Vanda
B.Sc. in Mechanical Engineering
Babol Noshirvani University of Technology
