import BookDetails from "./Components/BookDetails";
import BlogDetails from "./Components/BlogDetails";
import CourseDetails from "./Components/CourseDetails";

function App() {

  const showBooks = true;
  const showBlogs = true;
  const showCourses = true;

  return (
    <div style={{ margin: "20px" }}>

      <h1>Blogger App</h1>

      {/* Using && Operator */}
      {showBooks && <BookDetails />}

      <hr />

      {/* Using Ternary Operator */}
      {showBlogs ? <BlogDetails /> : <h3>No Blogs Available</h3>}

      <hr />

      {/* Using Element Variable */}
      {
        (() => {
          let component;

          if (showCourses) {
            component = <CourseDetails />;
          } else {
            component = <h3>No Courses Available</h3>;
          }

          return component;
        })()
      }

    </div>
  );
}

export default App;