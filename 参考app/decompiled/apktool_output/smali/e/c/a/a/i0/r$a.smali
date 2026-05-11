.class public Le/c/a/a/i0/r$a;
.super Le/c/a/a/a0/j;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/i0/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Le/c/a/a/i0/r;


# direct methods
.method public constructor <init>(Le/c/a/a/i0/r;)V
    .locals 0

    iput-object p1, p0, Le/c/a/a/i0/r$a;->e:Le/c/a/a/i0/r;

    invoke-direct {p0}, Le/c/a/a/a0/j;-><init>()V

    return-void
.end method


# virtual methods
.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Le/c/a/a/i0/r$a;->e:Le/c/a/a/i0/r;

    iget-object p2, p1, Le/c/a/a/i0/m;->c:Lcom/google/android/material/internal/CheckableImageButton;

    invoke-static {p1}, Le/c/a/a/i0/r;->e(Le/c/a/a/i0/r;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/google/android/material/internal/CheckableImageButton;->setChecked(Z)V

    return-void
.end method
