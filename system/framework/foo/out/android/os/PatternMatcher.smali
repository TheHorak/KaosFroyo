.class public Landroid/os/PatternMatcher;
.super Ljava/lang/Object;
.source "PatternMatcher.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/PatternMatcher;",
            ">;"
        }
    .end annotation
.end field

.field public static final PATTERN_LITERAL:I = 0x0

.field public static final PATTERN_PREFIX:I = 0x1

.field public static final PATTERN_SIMPLE_GLOB:I = 0x2


# instance fields
.field private final mPattern:Ljava/lang/String;

.field private final mType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 98
    new-instance v0, Landroid/os/PatternMatcher$1;

    invoke-direct {v0}, Landroid/os/PatternMatcher$1;-><init>()V

    sput-object v0, Landroid/os/PatternMatcher;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .parameter "src"

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/os/PatternMatcher;->mType:I

    .line 96
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter "pattern"
    .parameter "type"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    .line 53
    iput p2, p0, Landroid/os/PatternMatcher;->mType:I

    .line 54
    return-void
.end method

.method static matchPattern(Ljava/lang/String;Ljava/lang/String;I)Z
    .registers 16
    .parameter "pattern"
    .parameter "match"
    .parameter "type"

    .prologue
    const/16 v12, 0x2a

    const/4 v11, 0x2

    const/16 v10, 0x2e

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 110
    if-nez p1, :cond_b

    move v7, v8

    .line 195
    :goto_a
    return v7

    .line 111
    :cond_b
    if-nez p2, :cond_12

    .line 112
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    goto :goto_a

    .line 113
    :cond_12
    if-ne p2, v9, :cond_19

    .line 114
    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    goto :goto_a

    .line 115
    :cond_19
    if-eq p2, v11, :cond_1d

    move v7, v8

    .line 116
    goto :goto_a

    .line 119
    :cond_1d
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    .line 120
    .local v1, NP:I
    if-gtz v1, :cond_2d

    .line 121
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-gtz v7, :cond_2b

    move v7, v9

    goto :goto_a

    :cond_2b
    move v7, v8

    goto :goto_a

    .line 123
    :cond_2d
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 124
    .local v0, NM:I
    const/4 v5, 0x0

    .local v5, ip:I
    const/4 v4, 0x0

    .line 125
    .local v4, im:I
    invoke-virtual {p0, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 126
    .local v6, nextChar:C
    :goto_37
    if-ge v5, v1, :cond_c0

    if-ge v4, v0, :cond_c0

    .line 127
    move v2, v6

    .line 128
    .local v2, c:C
    add-int/lit8 v5, v5, 0x1

    .line 129
    if-ge v5, v1, :cond_62

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    .line 130
    :goto_45
    const/16 v7, 0x5c

    if-ne v2, v7, :cond_64

    move v3, v9

    .line 131
    .local v3, escaped:Z
    :goto_4a
    if-eqz v3, :cond_56

    .line 132
    move v2, v6

    .line 133
    add-int/lit8 v5, v5, 0x1

    .line 134
    if-ge v5, v1, :cond_66

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    .line 136
    :cond_56
    :goto_56
    if-ne v6, v12, :cond_b1

    .line 137
    if-nez v3, :cond_9a

    if-ne v2, v10, :cond_9a

    .line 138
    sub-int v7, v1, v9

    if-lt v5, v7, :cond_68

    move v7, v9

    .line 141
    goto :goto_a

    .end local v3           #escaped:Z
    :cond_62
    move v6, v8

    .line 129
    goto :goto_45

    :cond_64
    move v3, v8

    .line 130
    goto :goto_4a

    .restart local v3       #escaped:Z
    :cond_66
    move v6, v8

    .line 134
    goto :goto_56

    .line 143
    :cond_68
    add-int/lit8 v5, v5, 0x1

    .line 144
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 147
    const/16 v7, 0x5c

    if-ne v6, v7, :cond_7b

    .line 148
    add-int/lit8 v5, v5, 0x1

    .line 149
    if-ge v5, v1, :cond_85

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    .line 152
    :cond_7b
    :goto_7b
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v6, :cond_87

    .line 157
    :goto_81
    if-ne v4, v0, :cond_8c

    move v7, v8

    .line 160
    goto :goto_a

    :cond_85
    move v6, v8

    .line 149
    goto :goto_7b

    .line 155
    :cond_87
    add-int/lit8 v4, v4, 0x1

    .line 156
    if-lt v4, v0, :cond_7b

    goto :goto_81

    .line 162
    :cond_8c
    add-int/lit8 v5, v5, 0x1

    .line 163
    if-ge v5, v1, :cond_98

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    .line 164
    :goto_95
    add-int/lit8 v4, v4, 0x1

    goto :goto_37

    :cond_98
    move v6, v8

    .line 163
    goto :goto_95

    .line 168
    :cond_9a
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v2, :cond_aa

    .line 173
    :goto_a0
    add-int/lit8 v5, v5, 0x1

    .line 174
    if-ge v5, v1, :cond_af

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    move v6, v7

    :goto_a9
    goto :goto_37

    .line 171
    :cond_aa
    add-int/lit8 v4, v4, 0x1

    .line 172
    if-lt v4, v0, :cond_9a

    goto :goto_a0

    :cond_af
    move v6, v8

    .line 174
    goto :goto_a9

    .line 177
    :cond_b1
    if-eq v2, v10, :cond_bc

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v2, :cond_bc

    move v7, v8

    goto/16 :goto_a

    .line 178
    :cond_bc
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_37

    .line 182
    .end local v2           #c:C
    .end local v3           #escaped:Z
    :cond_c0
    if-lt v5, v1, :cond_c7

    if-lt v4, v0, :cond_c7

    move v7, v9

    .line 184
    goto/16 :goto_a

    .line 190
    :cond_c7
    sub-int v7, v1, v11

    if-ne v5, v7, :cond_dc

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_dc

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v12, :cond_dc

    move v7, v9

    .line 192
    goto/16 :goto_a

    :cond_dc
    move v7, v8

    .line 195
    goto/16 :goto_a
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public final getPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    return v0
.end method

.method public match(Ljava/lang/String;)Z
    .registers 4
    .parameter "str"

    .prologue
    .line 65
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-static {v0, p1, v1}, Landroid/os/PatternMatcher;->matchPattern(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 69
    const-string v0, "? "

    .line 70
    .local v0, type:Ljava/lang/String;
    iget v1, p0, Landroid/os/PatternMatcher;->mType:I

    packed-switch v1, :pswitch_data_30

    .line 81
    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PatternMatcher{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 72
    :pswitch_27
    const-string v0, "LITERAL: "

    .line 73
    goto :goto_7

    .line 75
    :pswitch_2a
    const-string v0, "PREFIX: "

    .line 76
    goto :goto_7

    .line 78
    :pswitch_2d
    const-string v0, "GLOB: "

    goto :goto_7

    .line 70
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/os/PatternMatcher;->mPattern:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget v0, p0, Landroid/os/PatternMatcher;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
