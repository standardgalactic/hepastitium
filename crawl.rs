use std::fmt;

struct Repository {
    name: &'static str,
    children: Vec<Repository>,
}

impl fmt::Display for Repository {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(f, "{}", self.name)?;
        for child in &self.children {
            write!(f, "\n- {}", child)?;
        }
        Ok(())
    }
}

fn main() {
    let repository_tree = Repository {
        name: "hepastitium",
        children: vec![
            Repository { name: "Resources", children: vec![] },
            Repository { name: "Readme", children: vec![] },
            Repository { name: "License", children: vec![] },
            Repository { name: "Code of conduct", children: vec![] },
            Repository { name: "Activity", children: vec![] },
        ],
    };

    println!("{}", repository_tree);
}
