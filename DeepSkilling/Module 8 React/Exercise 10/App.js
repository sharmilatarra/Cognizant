function App() {

  const officeSpaces = [
    {
      name: "Tech Park",
      rent: 55000,
      address: "Hyderabad",
      image: "https://images.unsplash.com/photo-1497366754035-f200968a6e72?w=600"
    },
    {
      name: "Business Hub",
      rent: 75000,
      address: "Bangalore",
      image: "https://images.unsplash.com/photo-1497366811353-6870744d04b2?w=600"
    },
    {
      name: "Corporate Tower",
      rent: 62000,
      address: "Chennai",
      image: "https://images.unsplash.com/photo-1497366412874-3415097a27e7?w=600"
    }
  ];

  return (
    <div style={{ margin: "20px" }}>

      <h1>Office Space Rental App</h1>

      {officeSpaces.map((office, index) => (

        <div
          key={index}
          style={{
            border: "1px solid black",
            width: "350px",
            padding: "15px",
            marginBottom: "20px"
          }}
        >

          <img
            src={office.image}
            alt={office.name}
            width="300"
            height="200"
          />

          <h2>{office.name}</h2>

          <p>
            <b>Rent : </b>

            <span
              style={{
                color: office.rent < 60000 ? "red" : "green"
              }}
            >
              ₹{office.rent}
            </span>

          </p>

          <p>
            <b>Address : </b>
            {office.address}
          </p>

        </div>

      ))}

    </div>
  );
}

export default App;