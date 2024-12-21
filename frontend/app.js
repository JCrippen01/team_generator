window.onload = () => {
  const baseUrl ="http://127.0.0.1:8000" 

    async function generateTeamName() {
    const outputDiv = document.getElementById('output');

    try {
      const response = await fetch(`${baseUrl}/all`);
      const data = await response.json();
      console.log(data);
      if (data.teams && Array.isArray(data.teams)) {
        // Pick a random team name from the results
        const allTeams = [...data.teams];
        const selectedTeams = [];

        while (selectedTeams.length < 4 && allTeams.length > 0) {
          const randomIndex = Math.floor(Math.random() * allTeams.length);
          const randomTeam = allTeams.splice(randomIndex, 1)[0];
          selectedTeams.push(randomTeam)
        }

        outputDiv.innerHTML = `
          <h3>Generated Teams:</h3>
          <ul>
            ${selectedTeams.map(team => `<li>Team Name: ${team[1] || 'Unnamed Team'}</li>`).join('')}
          </ul>
        `;

      }else{
        outputDiv.textContent = ' No Teams Found'
      }
   
    } catch (error) {
      console.error('Error Fetching team name:', error);
      outputDiv.textContent = 'Failed to fetch team names. Please try again.';
    }
  }

  document.getElementById('Generator').addEventListener('click', generateTeamName);
};














//       if (data.teams && Array.isArray(data.teams)) {
//         // Pick a random team name from the results
//         const randomTeam = data.teams[Math.floor(Math.random() * data.teams.length)];
//         console.log(typeof(randomTeam));
//         console.log(randomTeam)
//         outputDiv.textContent = `Team Name: ${randomTeam[1] || 'Unnamed Team'}`; // Assuming the name is in the second column
//       } else {
//         outputDiv.textContent = 'No teams found.';
//       }
//     } catch (error) {
//       console.error('Error fetching team names:', error);
//       outputDiv.textContent = 'Failed to fetch team names. Please try again.';
//       console.log("yippie")
//     }
//   }
//   document.getElementById('Generator').addEventListener(`click`, generateTeamName);
// }

// const btn = document.querySelector("button")
// btn.addEventListener("click", (e) => {
//   console.log(e.target)
// })
