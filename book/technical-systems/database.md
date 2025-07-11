---
name: Database
index: 5
---

# Database
The current database is [MongoDB](https://www.mongodb.com/) under Jonathan Lo's free MongoDB subscription. The main database is called `tsr-web` and has the following collections and information stored.

## Schemas
### User
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