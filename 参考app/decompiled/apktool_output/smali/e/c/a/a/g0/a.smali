.class public Le/c/a/a/g0/a;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>(Lcom/google/android/material/behavior/SwipeDismissBehavior;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/behavior/SwipeDismissBehavior<",
            "*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const v1, 0x3dcccccd    # 0.1f

    const/high16 v2, 0x3f800000    # 1.0f

    .line 1
    invoke-static {v0, v1, v2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->C(FFF)F

    move-result v1

    iput v1, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->g:F

    const v1, 0x3f19999a    # 0.6f

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/material/behavior/SwipeDismissBehavior;->C(FFF)F

    move-result v0

    iput v0, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->h:F

    const/4 v0, 0x0

    .line 3
    iput v0, p1, Lcom/google/android/material/behavior/SwipeDismissBehavior;->e:I

    return-void
.end method
