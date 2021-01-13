package main

import (
	"chatsimple/controller"
	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
)

func main() {
	r := gin.Default()
	r.Use(cors.New(cors.Config{
		AllowOrigins:     []string{"*"},
		AllowMethods:     []string{"POST", "GET", "PUT", "PATCH"},
		AllowHeaders:     []string{"*"},
		ExposeHeaders:    []string{"Content-Length"},
		AllowCredentials: true,
	}))

	api := r.Group("/api")
	{
		// API user
		api.GET("/user", controller.GetUser)
		api.POST("/user/get-by-list-id", controller.GetUserByListId)
		api.POST("/user", controller.CreateUser)
		api.POST("/user/login", controller.Login)

		// API message
		api.PUT("/message/update-message-no-read", controller.UpdateMessageNoRead)
		api.POST("/message/count-message-no-read", controller.CountMessageNoRead)
		api.POST("/message/get-message", controller.GetMessage)
		api.POST("/message/add-first-message", controller.AddFirstMessage)
		api.POST("/message/add-message", controller.AddMessage)
		api.POST("/message/get-receiver", controller.GetReceiver)
	}
	r.Run(":3000")
}
