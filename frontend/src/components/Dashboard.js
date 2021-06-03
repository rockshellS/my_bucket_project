import React, { Component } from 'react'
import "slick-carousel/slick/slick.css"
import "slick-carousel/slick/slick-theme.css"
import Slider from "react-slick"

const photos = [
    {
      name: 'Photo 1',
      url:  "https://user-images.githubusercontent.com/61843976/112371899-200ebe00-8cad-11eb-8782-8882a334211d.jpg"
    },
    {
        name: 'Photo 2',
        url:  "https://user-images.githubusercontent.com/61843976/112369823-a7a6fd80-8caa-11eb-9717-dcc148367a3b.jpg"
      },
      {
        name: 'Photo 3',
        url:  "https://user-images.githubusercontent.com/61843976/112373912-7846bf80-8caf-11eb-8ffd-fbe9abcde085.jpg"
      },
      {
        name: 'Photo 4',
        url:  "https://user-images.githubusercontent.com/61843976/112373414-f060b580-8cae-11eb-9d90-ff21155f8743.jpg"
      },
      {
        name: 'Photo 5',
        url:  "https://user-images.githubusercontent.com/61843976/112373995-94e2f780-8caf-11eb-9b25-b5074a6bdf0c.jpg"
      },
      {
        name: 'Photo 6',
        url:  "https://user-images.githubusercontent.com/61843976/112373802-5f3e0e80-8caf-11eb-946c-c2f0f65984b3.jpg"
      }
    
]

class Dashboard extends Component {
   render(){
      const settings = {
          dots: false,
          fade: true,
          infinte: true,
          autoplay: true,
          speed: 4000,
          autoplaySpeed: 4000,
          slidesToShow: 1,
          pauseOnHover: true,
          arrows: true,
          slidesToScroll: 1,
          className: "slides"
        }
    return (
       
        <Slider {...settings}>
                {photos.map((photo) => {
            return (
                <div>
                    <img width="100%" src={photo.url}/>
                </div>
            ) 
          })}  
        </Slider>
        )   
    }
}

export default Dashboard
