package entities

type Message struct {
	Id int `gorm:"primarykey"`
	MessageContent string
	//MessageTime time.Time
	IsRead string
}

type MessageResponse struct {
	Id int `gorm:"primarykey"`
	MessageContent string
	//MessageTime time.Time
	IsRead string
	MessageId, SenderId, ReceiveId int
}

func (Message) TableName() string {
	return "message"
}
