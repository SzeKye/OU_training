function showFormData(event){
	event.preventDefault();
	
	const name = document.getElementById("name").value; 
	
	const email = document.getElementById("email").value;
	
	const color = document.getElementById("color").value;
	
	const funLevel = document.getElementById("fun-level").value;
	
	const hobbies = [];
	
	document.querySelectorAll('input[name="hobby"]:checked').forEach(hobby => {hobbies.push(hobby.value); });
	
	const membership = document.querySelector('input[name="membership"]:checked');
	
	const membershipValue = membership ? membership.value : "None";
	
	// Create an HTML string to display using template literals 
	
	const output = `
	<h3>Your Submission:</h3>
        <p><strong>Name:</strong> ${name}</p>
        <p><strong>Email:</strong> ${email}</p>
        <p><strong>Favorite Color:</strong> 
            <span style="display:inline-block;width:20px;height:20px;background:${color};border:1px solid #ccc;"></span> ${color}
        </p>
        <p><strong>Fun Level:</strong> ${funLevel}</p>
        <p><strong>Hobbies:</strong> ${hobbies.join(", ") || "None selected"}</p>
        <p><strong>Membership:</strong> ${membershipValue}</p>
		`;
	
	document.getElementById("outputbox").innerHTML = output;
	
}