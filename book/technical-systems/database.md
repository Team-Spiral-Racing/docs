---
name: Database
index: 5
---

# Database
The current database is [MongoDB](https://www.mongodb.com/) under Jonathan Lo's free MongoDB subscription. The main database is called `tsr-web` and has the following collections and information stored.

## Schemas
#### User
| **Column** | **Description**                                                                                      |
|------------|------------------------------------------------------------------------------------------------------|
| id         | Internal MongoDB ID.                                                                                 |
| email      | User's email provided during account creation.                                                       |
| password   | SHA256 hashed store of the user's password.                                                          |
| firstName  | Users first name provided during account creation.                                                   |
| lastName   | Users last name provided during account creation.                                                    |
| cars       | Relational mapping to the cars object. Contains the User's owned cars.                               |
| role       | Role to designate privileges and permissions.                                                        |
| sessions   | Relational mapping to sessions object. Web sessions to allow auto-login.                             |
| trackTimes | Relational mapping to track time object. Contains information about the user's track times.          |
| BlogPost   | Relational mapping to blog post object. If the user writes a blog post, they are saved as an author. |
| Event      | Relational mapping to event object. User is saved as an author.                                      |

#### Session
| Column             | Description                                   |
|--------------------|-----------------------------------------------|
| id                 | Default MongoDB ID                            |
| userId             | Maps to the user ID |
| | When the session expires                      |
| user               | Maps to the actual user object                |

#### Blog Post
| Column                             | Description                               |
|------------------------------------|-------------------------------------------|
| title                              | Title of the blog post                    |
| imageRef                           | An image to show as the cover of the blog |
| content                            | Actual text writing the blog post         |
|       | Create time of the blog post              |
| author                             | Maps to the User object                   |
| authorId                           | Maps to the User ID                       |

#### Track Time
| Column               | Description                                                        |
|----------------------|--------------------------------------------------------------------|
| id                   | Default MongoDB Id                                                 |
| track                | Name of the road or street track                                   |
| configuration        | Name of the configuration of the track (CW, uphill)                |
| date                 | Date that the run occurred                                         |
| car                  | What car ran it                                                    |
| tag                  | Tags of the run                                                    |
| time                 | What the time was                                                  |
| proof                | A link to some asset that can provide proof of the time of the run |
| userId               | A mapping to the user ID                                           |
| user                 | A mapping to the user object                                       |

#### Event
| Column      | Description                         |
|-------------|-------------------------------------|
| id          | MongoDB default ID                  |
| title       | Title of the event                  |
| imageRef    | Splash image for the event          |
| datetime    | Date and time of the event          |
| location    | Location of the event               |
| description | Short text HTML/MD describing event |
| createdAt   | Create time                         |
| updatedAt   | Update time                         |
| createdBy   | Mapping to user object              |
| createdById | Mapping to user ID                  |