.class public Ld/f/b/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public a:Ld/f/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/f/b/e<",
            "Ld/f/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ld/f/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/f/b/e<",
            "Ld/f/b/b;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ld/f/b/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ld/f/b/e<",
            "Ld/f/b/g;",
            ">;"
        }
    .end annotation
.end field

.field public d:[Ld/f/b/g;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld/f/b/e;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ld/f/b/e;-><init>(I)V

    iput-object v0, p0, Ld/f/b/c;->a:Ld/f/b/e;

    new-instance v0, Ld/f/b/e;

    invoke-direct {v0, v1}, Ld/f/b/e;-><init>(I)V

    iput-object v0, p0, Ld/f/b/c;->b:Ld/f/b/e;

    new-instance v0, Ld/f/b/e;

    invoke-direct {v0, v1}, Ld/f/b/e;-><init>(I)V

    iput-object v0, p0, Ld/f/b/c;->c:Ld/f/b/e;

    const/16 v0, 0x20

    new-array v0, v0, [Ld/f/b/g;

    iput-object v0, p0, Ld/f/b/c;->d:[Ld/f/b/g;

    return-void
.end method
