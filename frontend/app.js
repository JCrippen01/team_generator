window.onload = () => {
  const baseUrl ="http://127.0.0.1:8000" 

    async function generateTeamName() {
    const outputDiv = document.getElementById('output');

    try {
      const response = await fetch(`${baseUrl}/all`);
      const data = await response.json();

      if (data.teams && Array.isArray(data.teams)) {
        // Pick a random team name from the results
        const randomTeam = data.teams[Math.floor(Math.random() * data.teams.length)];
        outputDiv.textContent = `Team Name: ${randomTeam[1] || 'Unnamed Team'}`; // Assuming the name is in the second column
      } else {
        outputDiv.textContent = 'No teams found.';
      }
    } catch (error) {
      console.error('Error fetching team names:', error);
      outputDiv.textContent = 'Failed to fetch team names. Please try again.';
      console.log("yippie")
    }
  }
  document.getElementById('Generator').addEventListener(`click`, generateTeamName);
}

// const btn = document.querySelector("button")
// btn.addEventListener("click", (e) => {
//   console.log(e.target)
// })
