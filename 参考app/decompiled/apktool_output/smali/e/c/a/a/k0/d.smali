.class public Le/c/a/a/k0/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/material/button/MaterialButtonToggleGroup$e;


# instance fields
.field public final synthetic a:Lcom/google/android/material/timepicker/TimePickerView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/timepicker/TimePickerView;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/k0/d;->a:Lcom/google/android/material/timepicker/TimePickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/material/button/MaterialButtonToggleGroup;IZ)V
    .locals 0

    sget p1, Le/c/a/a/f;->material_clock_period_pm_button:I

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Le/c/a/a/k0/d;->a:Lcom/google/android/material/timepicker/TimePickerView;

    .line 1
    iget-object p2, p2, Lcom/google/android/material/timepicker/TimePickerView;->B:Lcom/google/android/material/timepicker/TimePickerView$c;

    if-eqz p2, :cond_1

    if-eqz p3, :cond_1

    .line 2
    invoke-interface {p2, p1}, Lcom/google/android/material/timepicker/TimePickerView$c;->a(I)V

    :cond_1
    return-void
.end method
