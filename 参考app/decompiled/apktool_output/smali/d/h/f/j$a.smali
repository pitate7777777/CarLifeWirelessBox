.class public Ld/h/f/j$a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/h/f/j$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld/h/f/j;->f([Ld/h/i/h;I)Ld/h/i/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ld/h/f/j$b<",
        "Ld/h/i/h;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ld/h/f/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ld/h/i/h;

    .line 1
    iget p1, p1, Ld/h/i/h;->c:I

    return p1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ld/h/i/h;

    .line 1
    iget-boolean p1, p1, Ld/h/i/h;->d:Z

    return p1
.end method
