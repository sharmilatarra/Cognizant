import CohortDetails from './Components/CohortDetails';
function App() {
  return (
    <div>

      <CohortDetails
        name="React Bootcamp"
        trainer="John"
        duration="6 Weeks"
        status="ongoing"
      />

      <CohortDetails
        name="Java Full Stack"
        trainer="David"
        duration="8 Weeks"
        status="completed"
      />

      <CohortDetails
        name="Python Training"
        trainer="Alice"
        duration="5 Weeks"
        status="ongoing"
      />

    </div>
  );
}

export default App;