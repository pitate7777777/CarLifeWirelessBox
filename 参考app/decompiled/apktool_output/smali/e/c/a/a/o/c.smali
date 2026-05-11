.class public Le/c/a/a/o/c;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# instance fields
.field public final synthetic a:Lcom/google/android/material/bottomappbar/BottomAppBar;


# direct methods
.method public constructor <init>(Lcom/google/android/material/bottomappbar/BottomAppBar;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/o/c;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Le/c/a/a/o/c;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    invoke-static {p1}, Lcom/google/android/material/bottomappbar/BottomAppBar;->w(Lcom/google/android/material/bottomappbar/BottomAppBar;)V

    iget-object p1, p0, Le/c/a/a/o/c;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->b0:Z

    const/4 v0, 0x0

    .line 2
    iput-object v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->S:Landroid/animation/Animator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Le/c/a/a/o/c;->a:Lcom/google/android/material/bottomappbar/BottomAppBar;

    .line 1
    iget v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->W:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/google/android/material/bottomappbar/BottomAppBar;->W:I

    return-void
.end method
