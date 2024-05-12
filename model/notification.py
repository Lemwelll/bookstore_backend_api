# model/notifications.py
from fastapi import Depends, HTTPException, APIRouter, Query, Form
from .db import get_db

NotificationRouter = APIRouter(tags=["Notification"])

# CRUD operations

@NotificationRouter.get("/notification/", response_model=list)
async def read_notifications(
    studentID: int = Query(None, alias="studentID"),
    db=Depends(get_db)
):
    if studentID is not None:
        query = "SELECT * FROM notifications WHERE studentID = %s"
        db[0].execute(query, (studentID,))
    else:
        query = "SELECT * FROM notifications"
        db[0].execute(query)

    notifications = [{
        "id": notification[0],
        "message": notification[1],
        "studentID": notification[2],
        "created_at": notification[3],
        "read": notification[4],
    } for notification in db[0].fetchall()]
    return notifications



@NotificationRouter.put("/notification/{notification_id}", response_model=list)
async def update_notifications(
    notification_id: int,
    read: bool = Form(...),
    db=Depends(get_db)
):
    query_check_notification = "SELECT * FROM notifications WHERE id = %s"
    db[0].execute(query_check_notification, (notification_id,))
    existing_notification = db[0].fetchone()

    # query_update_notification = "UPDATE notifications SET " + ", ".join(f"{key} = %s" for key in update_data.keys()) + " WHERE id = %s"
    query = "UPDATE notifications SET read = %s WHERE notification_id = %s"
    db[0].execute(query, (read, notification_id))
    db[1].commit()

        # Check if the update was successful
    if db[0].rowcount > 0:
        db[1].commit()
        return {"message": "Notification details updated successfully"}
    
    # If no rows were affected, reservation details not found
    raise HTTPException(status_code=404, detail="Notification details not found")

    return {"success": True, "message": "Notification updated successfully"}