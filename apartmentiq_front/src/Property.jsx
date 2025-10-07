import Unit from './Unit.jsx'

function Property(props) {
  let property = props.property
  return (
    <div className ='border-t-4 p-4'>
      <div className='text-2xl'>{property.name}</div>
      <div>{property.address}</div>
      <div> Built: {property.year_built}</div>
      <a href={property.website_url}>{property.website_url}</a>
      {property.units.map((unit, index) => (
        <Unit
          unit={unit}
        />
      ))}
    </div>
  )
}

export default Property
