export default function About() {
  console.log(process.env);
  return <div>id,{JSON.stringify(process.env)}</div>;
}
