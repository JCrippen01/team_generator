window.onload = () => {
  const baseUrl = "18.119.142.108:8000"; // URL of the Flask back-end

  // Function to generate 4 teams with random animal names
  async function generateTeams() {
    const outputDiv = document.getElementById('output'); // Div to display the teams

    try {
      
      const response = await fetch(`${baseUrl}/all`);
      const data = await response.json();
      console.log(data);

     
      if (data.students && data.animals) {
        const students = [...data.students]; // Copy students array
        const animals = [...data.animals];   // Copy animals array
        const teams = [[], [], [], []];      // Initialize 4 empty teams

        // Iterate thru array and assign students to nested array
        for( elem of teams) {
          
          // Condition for elem length and students length
          while( elem.length < 4 && students.length > 0){
            const randomIndex = Math.floor(Math.random() * students.length);
            const randomStudent = students.splice(randomIndex, 1)[0]; // Remove a student
            elem.push(randomStudent); // Add the student to the team
          }
          
        }

        /*
        while (students.length > 0) {
          const randomIndex = Math.floor(Math.random() * students.length);
          const randomStudent = students.splice(randomIndex, 1)[0]; // Remove a student
          const teamIndex = Math.floor(Math.random() * 4); // Random team index
          teams[teamIndex].push(randomStudent); // Add the student to the team
        }*/

        // Assign a random animal name to each team
        const teamNames = teams.map(() => {
          const randomIndex = Math.floor(Math.random() * animals.length);
          const randomAnimal = animals.splice(randomIndex, 1)[0]; // Remove an animal
          return randomAnimal[1]; // Assuming the second column is the animal name
        });

     
        outputDiv.innerHTML = `
          <h3>Generated Teams:</h3>
          ${teams
            .map(
              (team, index) => `
                <h4>Team ${index + 1}: ${teamNames[index]}</h4>
                <ul>
                  ${team
                    .map(
                      (member) =>
                        `<li>${member[1] || "Unnamed Student"}</li>` // Assuming the second column is the student name
                    )
                    .join("")}
                </ul>
              `
            )
            .join("")}
        `;
      } else {
        outputDiv.textContent = "No Students or Animals found.";
      }
    } catch (error) {
      console.error("Error fetching data:", error);
      outputDiv.textContent = "Failed to fetch data. Please try again.";
    }
  }

  // Attach the event listener to the button
  document.getElementById("Generator").addEventListener("click", generateTeams);
};
