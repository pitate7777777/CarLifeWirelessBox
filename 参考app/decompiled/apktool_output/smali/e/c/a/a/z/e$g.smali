.class public Le/c/a/a/z/e$g;
.super Le/c/a/a/z/e$h;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/c/a/a/z/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic e:Le/c/a/a/z/e;


# direct methods
.method public constructor <init>(Le/c/a/a/z/e;)V
    .locals 1

    iput-object p1, p0, Le/c/a/a/z/e$g;->e:Le/c/a/a/z/e;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Le/c/a/a/z/e$h;-><init>(Le/c/a/a/z/e;Le/c/a/a/z/c;)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget-object v0, p0, Le/c/a/a/z/e$g;->e:Le/c/a/a/z/e;

    iget v0, v0, Le/c/a/a/z/e;->e:F

    return v0
.end method
