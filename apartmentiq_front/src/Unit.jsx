function Unit(props) {
  let unit = props.unit
  return (
    <div className='m-3'>
      <h3>{unit.name}</h3>
      <div>Bedroom Count: {unit.bedroom_count} </div>
      <div>Bathroom Count: {unit.bathroom_count} </div>
      <div>Square Footage: {unit.unit_size} </div>
    </div>
  )
}

export default Unit
