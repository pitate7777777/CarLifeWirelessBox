.class public Le/c/a/a/k0/e;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source ""


# instance fields
.field public final synthetic e:Lcom/google/android/material/timepicker/TimePickerView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/k0/e;->e:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    iget-object v0, p0, Le/c/a/a/k0/e;->e:Lcom/google/android/material/timepicker/TimePickerView;

    .line 1
    iget-object v0, v0, Lcom/google/android/material/timepicker/TimePickerView;->D:Lcom/google/android/material/timepicker/TimePickerView$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/google/android/material/timepicker/TimePickerView$b;->a()V

    :cond_0
    return p1
.end method
