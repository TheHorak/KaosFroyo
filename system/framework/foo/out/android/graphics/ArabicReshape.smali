.class Landroid/graphics/ArabicReshape;
.super Ljava/lang/Object;
.source "ArabicReshape.java"


# static fields
.field static final LEFT_CHAR_MASK:C = '\u0080'

.field static final NORIGHT_NOLEFT_CHAR:C = '\u0007'

.field static final NOTARABIC_CHAR:C = '\u0000'

.field static final NOTUSED_CHAR:C = '\u000f'

.field static final RIGHT_LEFT_CHAR:C = '\u0001'

.field static final RIGHT_LEFT_CHAR_LAM:C = '\u0003'

.field static final RIGHT_LEFT_CHAR_MASK:C = '\u0880'

.field static final RIGHT_NOLEFT_CHAR:C = '\u0004'

.field static final RIGHT_NOLEFT_CHAR_ALEF:C = '\u0006'

.field static final RIGHT_NOLEFT_CHAR_MASK:C = '\u0800'

.field static final TANWEEN:C = '\u000c'

.field static final TASHKEEL:C = '\n'

.field static final TATWEEL_CHAR:C = '\u0008'

.field private static final allchar:[[C


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x6

    .line 36
    const/16 v0, 0xb3

    new-array v0, v0, [[C

    const/4 v1, 0x0

    new-array v2, v3, [C

    fill-array-data v2, :array_64a

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [C

    fill-array-data v2, :array_654

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [C

    fill-array-data v2, :array_65e

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [C

    fill-array-data v2, :array_668

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [C

    fill-array-data v2, :array_672

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [C

    fill-array-data v2, :array_67c

    aput-object v2, v0, v1

    new-array v1, v3, [C

    fill-array-data v1, :array_686

    aput-object v1, v0, v3

    const/4 v1, 0x7

    new-array v2, v3, [C

    fill-array-data v2, :array_690

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [C

    fill-array-data v2, :array_69a

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [C

    fill-array-data v2, :array_6a4

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [C

    fill-array-data v2, :array_6ae

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [C

    fill-array-data v2, :array_6b8

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [C

    fill-array-data v2, :array_6c2

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [C

    fill-array-data v2, :array_6cc

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [C

    fill-array-data v2, :array_6d6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [C

    fill-array-data v2, :array_6e0

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [C

    fill-array-data v2, :array_6ea

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [C

    fill-array-data v2, :array_6f4

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [C

    fill-array-data v2, :array_6fe

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [C

    fill-array-data v2, :array_708

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [C

    fill-array-data v2, :array_712

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [C

    fill-array-data v2, :array_71c

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [C

    fill-array-data v2, :array_726

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [C

    fill-array-data v2, :array_730

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [C

    fill-array-data v2, :array_73a

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [C

    fill-array-data v2, :array_744

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [C

    fill-array-data v2, :array_74e

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [C

    fill-array-data v2, :array_758

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [C

    fill-array-data v2, :array_762

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [C

    fill-array-data v2, :array_76c

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [C

    fill-array-data v2, :array_776

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [C

    fill-array-data v2, :array_780

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-array v2, v3, [C

    fill-array-data v2, :array_78a

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-array v2, v3, [C

    fill-array-data v2, :array_794

    aput-object v2, v0, v1

    const/16 v1, 0x22

    new-array v2, v3, [C

    fill-array-data v2, :array_79e

    aput-object v2, v0, v1

    const/16 v1, 0x23

    new-array v2, v3, [C

    fill-array-data v2, :array_7a8

    aput-object v2, v0, v1

    const/16 v1, 0x24

    new-array v2, v3, [C

    fill-array-data v2, :array_7b2

    aput-object v2, v0, v1

    const/16 v1, 0x25

    new-array v2, v3, [C

    fill-array-data v2, :array_7bc

    aput-object v2, v0, v1

    const/16 v1, 0x26

    new-array v2, v3, [C

    fill-array-data v2, :array_7c6

    aput-object v2, v0, v1

    const/16 v1, 0x27

    new-array v2, v3, [C

    fill-array-data v2, :array_7d0

    aput-object v2, v0, v1

    const/16 v1, 0x28

    new-array v2, v3, [C

    fill-array-data v2, :array_7da

    aput-object v2, v0, v1

    const/16 v1, 0x29

    new-array v2, v3, [C

    fill-array-data v2, :array_7e4

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    new-array v2, v3, [C

    fill-array-data v2, :array_7ee

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    new-array v2, v3, [C

    fill-array-data v2, :array_7f8

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    new-array v2, v3, [C

    fill-array-data v2, :array_802

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    new-array v2, v3, [C

    fill-array-data v2, :array_80c

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    new-array v2, v3, [C

    fill-array-data v2, :array_816

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    new-array v2, v3, [C

    fill-array-data v2, :array_820

    aput-object v2, v0, v1

    const/16 v1, 0x30

    new-array v2, v3, [C

    fill-array-data v2, :array_82a

    aput-object v2, v0, v1

    const/16 v1, 0x31

    new-array v2, v3, [C

    fill-array-data v2, :array_834

    aput-object v2, v0, v1

    const/16 v1, 0x32

    new-array v2, v3, [C

    fill-array-data v2, :array_83e

    aput-object v2, v0, v1

    const/16 v1, 0x33

    new-array v2, v3, [C

    fill-array-data v2, :array_848

    aput-object v2, v0, v1

    const/16 v1, 0x34

    new-array v2, v3, [C

    fill-array-data v2, :array_852

    aput-object v2, v0, v1

    const/16 v1, 0x35

    new-array v2, v3, [C

    fill-array-data v2, :array_85c

    aput-object v2, v0, v1

    const/16 v1, 0x36

    new-array v2, v3, [C

    fill-array-data v2, :array_866

    aput-object v2, v0, v1

    const/16 v1, 0x37

    new-array v2, v3, [C

    fill-array-data v2, :array_870

    aput-object v2, v0, v1

    const/16 v1, 0x38

    new-array v2, v3, [C

    fill-array-data v2, :array_87a

    aput-object v2, v0, v1

    const/16 v1, 0x39

    new-array v2, v3, [C

    fill-array-data v2, :array_884

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    new-array v2, v3, [C

    fill-array-data v2, :array_88e

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    new-array v2, v3, [C

    fill-array-data v2, :array_898

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    new-array v2, v3, [C

    fill-array-data v2, :array_8a2

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    new-array v2, v3, [C

    fill-array-data v2, :array_8ac

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    new-array v2, v3, [C

    fill-array-data v2, :array_8b6

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    new-array v2, v3, [C

    fill-array-data v2, :array_8c0

    aput-object v2, v0, v1

    const/16 v1, 0x40

    new-array v2, v3, [C

    fill-array-data v2, :array_8ca

    aput-object v2, v0, v1

    const/16 v1, 0x41

    new-array v2, v3, [C

    fill-array-data v2, :array_8d4

    aput-object v2, v0, v1

    const/16 v1, 0x42

    new-array v2, v3, [C

    fill-array-data v2, :array_8de

    aput-object v2, v0, v1

    const/16 v1, 0x43

    new-array v2, v3, [C

    fill-array-data v2, :array_8e8

    aput-object v2, v0, v1

    const/16 v1, 0x44

    new-array v2, v3, [C

    fill-array-data v2, :array_8f2

    aput-object v2, v0, v1

    const/16 v1, 0x45

    new-array v2, v3, [C

    fill-array-data v2, :array_8fc

    aput-object v2, v0, v1

    const/16 v1, 0x46

    new-array v2, v3, [C

    fill-array-data v2, :array_906

    aput-object v2, v0, v1

    const/16 v1, 0x47

    new-array v2, v3, [C

    fill-array-data v2, :array_910

    aput-object v2, v0, v1

    const/16 v1, 0x48

    new-array v2, v3, [C

    fill-array-data v2, :array_91a

    aput-object v2, v0, v1

    const/16 v1, 0x49

    new-array v2, v3, [C

    fill-array-data v2, :array_924

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    new-array v2, v3, [C

    fill-array-data v2, :array_92e

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    new-array v2, v3, [C

    fill-array-data v2, :array_938

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    new-array v2, v3, [C

    fill-array-data v2, :array_942

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    new-array v2, v3, [C

    fill-array-data v2, :array_94c

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    new-array v2, v3, [C

    fill-array-data v2, :array_956

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    new-array v2, v3, [C

    fill-array-data v2, :array_960

    aput-object v2, v0, v1

    const/16 v1, 0x50

    new-array v2, v3, [C

    fill-array-data v2, :array_96a

    aput-object v2, v0, v1

    const/16 v1, 0x51

    new-array v2, v3, [C

    fill-array-data v2, :array_974

    aput-object v2, v0, v1

    const/16 v1, 0x52

    new-array v2, v3, [C

    fill-array-data v2, :array_97e

    aput-object v2, v0, v1

    const/16 v1, 0x53

    new-array v2, v3, [C

    fill-array-data v2, :array_988

    aput-object v2, v0, v1

    const/16 v1, 0x54

    new-array v2, v3, [C

    fill-array-data v2, :array_992

    aput-object v2, v0, v1

    const/16 v1, 0x55

    new-array v2, v3, [C

    fill-array-data v2, :array_99c

    aput-object v2, v0, v1

    const/16 v1, 0x56

    new-array v2, v3, [C

    fill-array-data v2, :array_9a6

    aput-object v2, v0, v1

    const/16 v1, 0x57

    new-array v2, v3, [C

    fill-array-data v2, :array_9b0

    aput-object v2, v0, v1

    const/16 v1, 0x58

    new-array v2, v3, [C

    fill-array-data v2, :array_9ba

    aput-object v2, v0, v1

    const/16 v1, 0x59

    new-array v2, v3, [C

    fill-array-data v2, :array_9c4

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    new-array v2, v3, [C

    fill-array-data v2, :array_9ce

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    new-array v2, v3, [C

    fill-array-data v2, :array_9d8

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    new-array v2, v3, [C

    fill-array-data v2, :array_9e2

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    new-array v2, v3, [C

    fill-array-data v2, :array_9ec

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    new-array v2, v3, [C

    fill-array-data v2, :array_9f6

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    new-array v2, v3, [C

    fill-array-data v2, :array_a00

    aput-object v2, v0, v1

    const/16 v1, 0x60

    new-array v2, v3, [C

    fill-array-data v2, :array_a0a

    aput-object v2, v0, v1

    const/16 v1, 0x61

    new-array v2, v3, [C

    fill-array-data v2, :array_a14

    aput-object v2, v0, v1

    const/16 v1, 0x62

    new-array v2, v3, [C

    fill-array-data v2, :array_a1e

    aput-object v2, v0, v1

    const/16 v1, 0x63

    new-array v2, v3, [C

    fill-array-data v2, :array_a28

    aput-object v2, v0, v1

    const/16 v1, 0x64

    new-array v2, v3, [C

    fill-array-data v2, :array_a32

    aput-object v2, v0, v1

    const/16 v1, 0x65

    new-array v2, v3, [C

    fill-array-data v2, :array_a3c

    aput-object v2, v0, v1

    const/16 v1, 0x66

    new-array v2, v3, [C

    fill-array-data v2, :array_a46

    aput-object v2, v0, v1

    const/16 v1, 0x67

    new-array v2, v3, [C

    fill-array-data v2, :array_a50

    aput-object v2, v0, v1

    const/16 v1, 0x68

    new-array v2, v3, [C

    fill-array-data v2, :array_a5a

    aput-object v2, v0, v1

    const/16 v1, 0x69

    new-array v2, v3, [C

    fill-array-data v2, :array_a64

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    new-array v2, v3, [C

    fill-array-data v2, :array_a6e

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    new-array v2, v3, [C

    fill-array-data v2, :array_a78

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    new-array v2, v3, [C

    fill-array-data v2, :array_a82

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    new-array v2, v3, [C

    fill-array-data v2, :array_a8c

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    new-array v2, v3, [C

    fill-array-data v2, :array_a96

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    new-array v2, v3, [C

    fill-array-data v2, :array_aa0

    aput-object v2, v0, v1

    const/16 v1, 0x70

    new-array v2, v3, [C

    fill-array-data v2, :array_aaa

    aput-object v2, v0, v1

    const/16 v1, 0x71

    new-array v2, v3, [C

    fill-array-data v2, :array_ab4

    aput-object v2, v0, v1

    const/16 v1, 0x72

    new-array v2, v3, [C

    fill-array-data v2, :array_abe

    aput-object v2, v0, v1

    const/16 v1, 0x73

    new-array v2, v3, [C

    fill-array-data v2, :array_ac8

    aput-object v2, v0, v1

    const/16 v1, 0x74

    new-array v2, v3, [C

    fill-array-data v2, :array_ad2

    aput-object v2, v0, v1

    const/16 v1, 0x75

    new-array v2, v3, [C

    fill-array-data v2, :array_adc

    aput-object v2, v0, v1

    const/16 v1, 0x76

    new-array v2, v3, [C

    fill-array-data v2, :array_ae6

    aput-object v2, v0, v1

    const/16 v1, 0x77

    new-array v2, v3, [C

    fill-array-data v2, :array_af0

    aput-object v2, v0, v1

    const/16 v1, 0x78

    new-array v2, v3, [C

    fill-array-data v2, :array_afa

    aput-object v2, v0, v1

    const/16 v1, 0x79

    new-array v2, v3, [C

    fill-array-data v2, :array_b04

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    new-array v2, v3, [C

    fill-array-data v2, :array_b0e

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    new-array v2, v3, [C

    fill-array-data v2, :array_b18

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    new-array v2, v3, [C

    fill-array-data v2, :array_b22

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    new-array v2, v3, [C

    fill-array-data v2, :array_b2c

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    new-array v2, v3, [C

    fill-array-data v2, :array_b36

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    new-array v2, v3, [C

    fill-array-data v2, :array_b40

    aput-object v2, v0, v1

    const/16 v1, 0x80

    new-array v2, v3, [C

    fill-array-data v2, :array_b4a

    aput-object v2, v0, v1

    const/16 v1, 0x81

    new-array v2, v3, [C

    fill-array-data v2, :array_b54

    aput-object v2, v0, v1

    const/16 v1, 0x82

    new-array v2, v3, [C

    fill-array-data v2, :array_b5e

    aput-object v2, v0, v1

    const/16 v1, 0x83

    new-array v2, v3, [C

    fill-array-data v2, :array_b68

    aput-object v2, v0, v1

    const/16 v1, 0x84

    new-array v2, v3, [C

    fill-array-data v2, :array_b72

    aput-object v2, v0, v1

    const/16 v1, 0x85

    new-array v2, v3, [C

    fill-array-data v2, :array_b7c

    aput-object v2, v0, v1

    const/16 v1, 0x86

    new-array v2, v3, [C

    fill-array-data v2, :array_b86

    aput-object v2, v0, v1

    const/16 v1, 0x87

    new-array v2, v3, [C

    fill-array-data v2, :array_b90

    aput-object v2, v0, v1

    const/16 v1, 0x88

    new-array v2, v3, [C

    fill-array-data v2, :array_b9a

    aput-object v2, v0, v1

    const/16 v1, 0x89

    new-array v2, v3, [C

    fill-array-data v2, :array_ba4

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    new-array v2, v3, [C

    fill-array-data v2, :array_bae

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    new-array v2, v3, [C

    fill-array-data v2, :array_bb8

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    new-array v2, v3, [C

    fill-array-data v2, :array_bc2

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    new-array v2, v3, [C

    fill-array-data v2, :array_bcc

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    new-array v2, v3, [C

    fill-array-data v2, :array_bd6

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    new-array v2, v3, [C

    fill-array-data v2, :array_be0

    aput-object v2, v0, v1

    const/16 v1, 0x90

    new-array v2, v3, [C

    fill-array-data v2, :array_bea

    aput-object v2, v0, v1

    const/16 v1, 0x91

    new-array v2, v3, [C

    fill-array-data v2, :array_bf4

    aput-object v2, v0, v1

    const/16 v1, 0x92

    new-array v2, v3, [C

    fill-array-data v2, :array_bfe

    aput-object v2, v0, v1

    const/16 v1, 0x93

    new-array v2, v3, [C

    fill-array-data v2, :array_c08

    aput-object v2, v0, v1

    const/16 v1, 0x94

    new-array v2, v3, [C

    fill-array-data v2, :array_c12

    aput-object v2, v0, v1

    const/16 v1, 0x95

    new-array v2, v3, [C

    fill-array-data v2, :array_c1c

    aput-object v2, v0, v1

    const/16 v1, 0x96

    new-array v2, v3, [C

    fill-array-data v2, :array_c26

    aput-object v2, v0, v1

    const/16 v1, 0x97

    new-array v2, v3, [C

    fill-array-data v2, :array_c30

    aput-object v2, v0, v1

    const/16 v1, 0x98

    new-array v2, v3, [C

    fill-array-data v2, :array_c3a

    aput-object v2, v0, v1

    const/16 v1, 0x99

    new-array v2, v3, [C

    fill-array-data v2, :array_c44

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    new-array v2, v3, [C

    fill-array-data v2, :array_c4e

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    new-array v2, v3, [C

    fill-array-data v2, :array_c58

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    new-array v2, v3, [C

    fill-array-data v2, :array_c62

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    new-array v2, v3, [C

    fill-array-data v2, :array_c6c

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    new-array v2, v3, [C

    fill-array-data v2, :array_c76

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    new-array v2, v3, [C

    fill-array-data v2, :array_c80

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    new-array v2, v3, [C

    fill-array-data v2, :array_c8a

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    new-array v2, v3, [C

    fill-array-data v2, :array_c94

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    new-array v2, v3, [C

    fill-array-data v2, :array_c9e

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    new-array v2, v3, [C

    fill-array-data v2, :array_ca8

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    new-array v2, v3, [C

    fill-array-data v2, :array_cb2

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    new-array v2, v3, [C

    fill-array-data v2, :array_cbc

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    new-array v2, v3, [C

    fill-array-data v2, :array_cc6

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    new-array v2, v3, [C

    fill-array-data v2, :array_cd0

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    new-array v2, v3, [C

    fill-array-data v2, :array_cda

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    new-array v2, v3, [C

    fill-array-data v2, :array_ce4

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    new-array v2, v3, [C

    fill-array-data v2, :array_cee

    aput-object v2, v0, v1

    const/16 v1, 0xab

    new-array v2, v3, [C

    fill-array-data v2, :array_cf8

    aput-object v2, v0, v1

    const/16 v1, 0xac

    new-array v2, v3, [C

    fill-array-data v2, :array_d02

    aput-object v2, v0, v1

    const/16 v1, 0xad

    new-array v2, v3, [C

    fill-array-data v2, :array_d0c

    aput-object v2, v0, v1

    const/16 v1, 0xae

    new-array v2, v3, [C

    fill-array-data v2, :array_d16

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    new-array v2, v3, [C

    fill-array-data v2, :array_d20

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    new-array v2, v3, [C

    fill-array-data v2, :array_d2a

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    new-array v2, v3, [C

    fill-array-data v2, :array_d34

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    new-array v2, v3, [C

    fill-array-data v2, :array_d3e

    aput-object v2, v0, v1

    sput-object v0, Landroid/graphics/ArabicReshape;->allchar:[[C

    return-void

    :array_64a
    .array-data 0x2
        0x21t 0x6t
        0x7t 0x0t
        0x80t 0xfet
        0x80t 0xfet
        0x80t 0xfet
        0x80t 0xfet
    .end array-data

    :array_654
    .array-data 0x2
        0x22t 0x6t
        0x6t 0x8t
        0x81t 0xfet
        0x82t 0xfet
        0xf5t 0xfet
        0xf6t 0xfet
    .end array-data

    :array_65e
    .array-data 0x2
        0x23t 0x6t
        0x6t 0x8t
        0x83t 0xfet
        0x84t 0xfet
        0xf7t 0xfet
        0xf8t 0xfet
    .end array-data

    :array_668
    .array-data 0x2
        0x24t 0x6t
        0x4t 0x8t
        0x85t 0xfet
        0x86t 0xfet
        0x86t 0xfet
        0x86t 0xfet
    .end array-data

    :array_672
    .array-data 0x2
        0x25t 0x6t
        0x6t 0x8t
        0x87t 0xfet
        0x88t 0xfet
        0xf9t 0xfet
        0xfat 0xfet
    .end array-data

    :array_67c
    .array-data 0x2
        0x26t 0x6t
        0x81t 0x8t
        0x89t 0xfet
        0x8at 0xfet
        0x8bt 0xfet
        0x8ct 0xfet
    .end array-data

    :array_686
    .array-data 0x2
        0x27t 0x6t
        0x6t 0x8t
        0x8dt 0xfet
        0x8et 0xfet
        0xfbt 0xfet
        0xfct 0xfet
    .end array-data

    :array_690
    .array-data 0x2
        0x28t 0x6t
        0x81t 0x8t
        0x8ft 0xfet
        0x90t 0xfet
        0x91t 0xfet
        0x92t 0xfet
    .end array-data

    :array_69a
    .array-data 0x2
        0x29t 0x6t
        0x4t 0x8t
        0x93t 0xfet
        0x94t 0xfet
        0x94t 0xfet
        0x94t 0xfet
    .end array-data

    :array_6a4
    .array-data 0x2
        0x2at 0x6t
        0x81t 0x8t
        0x95t 0xfet
        0x96t 0xfet
        0x97t 0xfet
        0x98t 0xfet
    .end array-data

    :array_6ae
    .array-data 0x2
        0x2bt 0x6t
        0x81t 0x8t
        0x99t 0xfet
        0x9at 0xfet
        0x9bt 0xfet
        0x9ct 0xfet
    .end array-data

    :array_6b8
    .array-data 0x2
        0x2ct 0x6t
        0x81t 0x8t
        0x9dt 0xfet
        0x9et 0xfet
        0x9ft 0xfet
        0xa0t 0xfet
    .end array-data

    :array_6c2
    .array-data 0x2
        0x2dt 0x6t
        0x81t 0x8t
        0xa1t 0xfet
        0xa2t 0xfet
        0xa3t 0xfet
        0xa4t 0xfet
    .end array-data

    :array_6cc
    .array-data 0x2
        0x2et 0x6t
        0x81t 0x8t
        0xa5t 0xfet
        0xa6t 0xfet
        0xa7t 0xfet
        0xa8t 0xfet
    .end array-data

    :array_6d6
    .array-data 0x2
        0x2ft 0x6t
        0x4t 0x8t
        0xa9t 0xfet
        0xaat 0xfet
        0xaat 0xfet
        0xaat 0xfet
    .end array-data

    :array_6e0
    .array-data 0x2
        0x30t 0x6t
        0x4t 0x8t
        0xabt 0xfet
        0xact 0xfet
        0xact 0xfet
        0xact 0xfet
    .end array-data

    :array_6ea
    .array-data 0x2
        0x31t 0x6t
        0x4t 0x8t
        0xadt 0xfet
        0xaet 0xfet
        0xaet 0xfet
        0xaet 0xfet
    .end array-data

    :array_6f4
    .array-data 0x2
        0x32t 0x6t
        0x4t 0x8t
        0xaft 0xfet
        0xb0t 0xfet
        0xb0t 0xfet
        0xb0t 0xfet
    .end array-data

    :array_6fe
    .array-data 0x2
        0x33t 0x6t
        0x81t 0x8t
        0xb1t 0xfet
        0xb2t 0xfet
        0xb3t 0xfet
        0xb4t 0xfet
    .end array-data

    :array_708
    .array-data 0x2
        0x34t 0x6t
        0x81t 0x8t
        0xb5t 0xfet
        0xb6t 0xfet
        0xb7t 0xfet
        0xb8t 0xfet
    .end array-data

    :array_712
    .array-data 0x2
        0x35t 0x6t
        0x81t 0x8t
        0xb9t 0xfet
        0xbat 0xfet
        0xbbt 0xfet
        0xbct 0xfet
    .end array-data

    :array_71c
    .array-data 0x2
        0x36t 0x6t
        0x81t 0x8t
        0xbdt 0xfet
        0xbet 0xfet
        0xbft 0xfet
        0xc0t 0xfet
    .end array-data

    :array_726
    .array-data 0x2
        0x37t 0x6t
        0x81t 0x8t
        0xc1t 0xfet
        0xc2t 0xfet
        0xc3t 0xfet
        0xc4t 0xfet
    .end array-data

    :array_730
    .array-data 0x2
        0x38t 0x6t
        0x81t 0x8t
        0xc5t 0xfet
        0xc6t 0xfet
        0xc7t 0xfet
        0xc8t 0xfet
    .end array-data

    :array_73a
    .array-data 0x2
        0x39t 0x6t
        0x81t 0x8t
        0xc9t 0xfet
        0xcat 0xfet
        0xcbt 0xfet
        0xcct 0xfet
    .end array-data

    :array_744
    .array-data 0x2
        0x3at 0x6t
        0x81t 0x8t
        0xcdt 0xfet
        0xcet 0xfet
        0xcft 0xfet
        0xd0t 0xfet
    .end array-data

    :array_74e
    .array-data 0x2
        0x3bt 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_758
    .array-data 0x2
        0x3ct 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_762
    .array-data 0x2
        0x3dt 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_76c
    .array-data 0x2
        0x3et 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_776
    .array-data 0x2
        0x3ft 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_780
    .array-data 0x2
        0x40t 0x6t
        0x88t 0x8t
        0x40t 0x6t
        0x40t 0x6t
        0x40t 0x6t
        0x40t 0x6t
    .end array-data

    :array_78a
    .array-data 0x2
        0x41t 0x6t
        0x81t 0x8t
        0xd1t 0xfet
        0xd2t 0xfet
        0xd3t 0xfet
        0xd4t 0xfet
    .end array-data

    :array_794
    .array-data 0x2
        0x42t 0x6t
        0x81t 0x8t
        0xd5t 0xfet
        0xd6t 0xfet
        0xd7t 0xfet
        0xd8t 0xfet
    .end array-data

    :array_79e
    .array-data 0x2
        0x43t 0x6t
        0x81t 0x8t
        0xd9t 0xfet
        0xdat 0xfet
        0xdbt 0xfet
        0xdct 0xfet
    .end array-data

    :array_7a8
    .array-data 0x2
        0x44t 0x6t
        0x83t 0x8t
        0xddt 0xfet
        0xdet 0xfet
        0xdft 0xfet
        0xe0t 0xfet
    .end array-data

    :array_7b2
    .array-data 0x2
        0x45t 0x6t
        0x81t 0x8t
        0xe1t 0xfet
        0xe2t 0xfet
        0xe3t 0xfet
        0xe4t 0xfet
    .end array-data

    :array_7bc
    .array-data 0x2
        0x46t 0x6t
        0x81t 0x8t
        0xe5t 0xfet
        0xe6t 0xfet
        0xe7t 0xfet
        0xe8t 0xfet
    .end array-data

    :array_7c6
    .array-data 0x2
        0x47t 0x6t
        0x81t 0x8t
        0xe9t 0xfet
        0xeat 0xfet
        0xebt 0xfet
        0xect 0xfet
    .end array-data

    :array_7d0
    .array-data 0x2
        0x48t 0x6t
        0x4t 0x8t
        0xedt 0xfet
        0xeet 0xfet
        0xeet 0xfet
        0xeet 0xfet
    .end array-data

    :array_7da
    .array-data 0x2
        0x49t 0x6t
        0x4t 0x8t
        0xeft 0xfet
        0xf0t 0xfet
        0xf0t 0xfet
        0xf0t 0xfet
    .end array-data

    :array_7e4
    .array-data 0x2
        0x4at 0x6t
        0x81t 0x8t
        0xf1t 0xfet
        0xf2t 0xfet
        0xf3t 0xfet
        0xf4t 0xfet
    .end array-data

    :array_7ee
    .array-data 0x2
        0x4bt 0x6t
        0xct 0x0t
        0x4bt 0x6t
        0x70t 0xfet
        0x71t 0xfet
        0x70t 0xfet
    .end array-data

    :array_7f8
    .array-data 0x2
        0x4ct 0x6t
        0xct 0x0t
        0x4ct 0x6t
        0x72t 0xfet
        0x72t 0xfet
        0x72t 0xfet
    .end array-data

    :array_802
    .array-data 0x2
        0x4dt 0x6t
        0xct 0x0t
        0x4dt 0x6t
        0x74t 0xfet
        0x74t 0xfet
        0x74t 0xfet
    .end array-data

    :array_80c
    .array-data 0x2
        0x4et 0x6t
        0xat 0x0t
        0x4et 0x6t
        0x76t 0xfet
        0x77t 0xfet
        0x76t 0xfet
    .end array-data

    :array_816
    .array-data 0x2
        0x4ft 0x6t
        0xat 0x0t
        0x4ft 0x6t
        0x78t 0xfet
        0x79t 0xfet
        0x78t 0xfet
    .end array-data

    :array_820
    .array-data 0x2
        0x50t 0x6t
        0xat 0x0t
        0x50t 0x6t
        0x7at 0xfet
        0x7bt 0xfet
        0x7at 0xfet
    .end array-data

    :array_82a
    .array-data 0x2
        0x51t 0x6t
        0xat 0x0t
        0x51t 0x6t
        0x7ct 0xfet
        0x7dt 0xfet
        0x7ct 0xfet
    .end array-data

    :array_834
    .array-data 0x2
        0x52t 0x6t
        0xat 0x0t
        0x52t 0x6t
        0x7et 0xfet
        0x7ft 0xfet
        0x7et 0xfet
    .end array-data

    :array_83e
    .array-data 0x2
        0x53t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_848
    .array-data 0x2
        0x54t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_852
    .array-data 0x2
        0x55t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_85c
    .array-data 0x2
        0x56t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_866
    .array-data 0x2
        0x57t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_870
    .array-data 0x2
        0x58t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_87a
    .array-data 0x2
        0x59t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_884
    .array-data 0x2
        0x5at 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_88e
    .array-data 0x2
        0x5bt 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_898
    .array-data 0x2
        0x5ct 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_8a2
    .array-data 0x2
        0x5dt 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_8ac
    .array-data 0x2
        0x5et 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_8b6
    .array-data 0x2
        0x5ft 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_8c0
    .array-data 0x2
        0x60t 0x6t
        0xbt 0x0t
        0x60t 0x6t
        0x60t 0x6t
        0x60t 0x6t
        0x60t 0x6t
    .end array-data

    :array_8ca
    .array-data 0x2
        0x61t 0x6t
        0xbt 0x0t
        0x61t 0x6t
        0x61t 0x6t
        0x61t 0x6t
        0x61t 0x6t
    .end array-data

    :array_8d4
    .array-data 0x2
        0x62t 0x6t
        0xbt 0x0t
        0x62t 0x6t
        0x62t 0x6t
        0x62t 0x6t
        0x62t 0x6t
    .end array-data

    :array_8de
    .array-data 0x2
        0x63t 0x6t
        0xbt 0x0t
        0x63t 0x6t
        0x63t 0x6t
        0x63t 0x6t
        0x63t 0x6t
    .end array-data

    :array_8e8
    .array-data 0x2
        0x64t 0x6t
        0xbt 0x0t
        0x65t 0x6t
        0x64t 0x6t
        0x64t 0x6t
        0x64t 0x6t
    .end array-data

    :array_8f2
    .array-data 0x2
        0x65t 0x6t
        0xbt 0x0t
        0x65t 0x6t
        0x65t 0x6t
        0x65t 0x6t
        0x65t 0x6t
    .end array-data

    :array_8fc
    .array-data 0x2
        0x66t 0x6t
        0xbt 0x0t
        0x66t 0x6t
        0x66t 0x6t
        0x66t 0x6t
        0x66t 0x6t
    .end array-data

    :array_906
    .array-data 0x2
        0x67t 0x6t
        0xbt 0x0t
        0x67t 0x6t
        0x67t 0x6t
        0x67t 0x6t
        0x67t 0x6t
    .end array-data

    :array_910
    .array-data 0x2
        0x68t 0x6t
        0xbt 0x0t
        0x68t 0x6t
        0x68t 0x6t
        0x68t 0x6t
        0x68t 0x6t
    .end array-data

    :array_91a
    .array-data 0x2
        0x69t 0x6t
        0xbt 0x0t
        0x69t 0x6t
        0x69t 0x6t
        0x69t 0x6t
        0x69t 0x6t
    .end array-data

    :array_924
    .array-data 0x2
        0x6at 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_92e
    .array-data 0x2
        0x6bt 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_938
    .array-data 0x2
        0x6ct 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_942
    .array-data 0x2
        0x6dt 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_94c
    .array-data 0x2
        0x6et 0x6t
        0xet 0x0t
        0x5et 0x6t
        0x5et 0x6t
        0x5et 0x6t
        0x5et 0x6t
    .end array-data

    :array_956
    .array-data 0x2
        0x6ft 0x6t
        0xet 0x0t
        0x5ft 0x6t
        0x5ft 0x6t
        0x5ft 0x6t
        0x5ft 0x6t
    .end array-data

    :array_960
    .array-data 0x2
        0x70t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_96a
    .array-data 0x2
        0x71t 0x6t
        0x4t 0x8t
        0x50t 0xfbt
        0x51t 0xfbt
        0x51t 0xfbt
        0x51t 0xfbt
    .end array-data

    :array_974
    .array-data 0x2
        0x72t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_97e
    .array-data 0x2
        0x73t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_988
    .array-data 0x2
        0x74t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_992
    .array-data 0x2
        0x75t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_99c
    .array-data 0x2
        0x76t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_9a6
    .array-data 0x2
        0x77t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_9b0
    .array-data 0x2
        0x78t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_9ba
    .array-data 0x2
        0x79t 0x6t
        0x81t 0x8t
        0x66t 0xfbt
        0x67t 0xfbt
        0x68t 0xfbt
        0x69t 0xfbt
    .end array-data

    :array_9c4
    .array-data 0x2
        0x7at 0x6t
        0x81t 0x8t
        0x5et 0xfbt
        0x5ft 0xfbt
        0x60t 0xfbt
        0x61t 0xfbt
    .end array-data

    :array_9ce
    .array-data 0x2
        0x7bt 0x6t
        0x81t 0x8t
        0x52t 0xfbt
        0x53t 0xfbt
        0x54t 0xfbt
        0x55t 0xfbt
    .end array-data

    :array_9d8
    .array-data 0x2
        0x7ct 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_9e2
    .array-data 0x2
        0x7dt 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_9ec
    .array-data 0x2
        0x7et 0x6t
        0x81t 0x8t
        0x56t 0xfbt
        0x57t 0xfbt
        0x58t 0xfbt
        0x59t 0xfbt
    .end array-data

    :array_9f6
    .array-data 0x2
        0x7ft 0x6t
        0x81t 0x8t
        0x62t 0xfbt
        0x63t 0xfbt
        0x64t 0xfbt
        0x65t 0xfbt
    .end array-data

    :array_a00
    .array-data 0x2
        0x80t 0x6t
        0x81t 0x8t
        0x5at 0xfbt
        0x5bt 0xfbt
        0x5ct 0xfbt
        0x5dt 0xfbt
    .end array-data

    :array_a0a
    .array-data 0x2
        0x81t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_a14
    .array-data 0x2
        0x82t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_a1e
    .array-data 0x2
        0x83t 0x6t
        0x81t 0x8t
        0x76t 0xfbt
        0x77t 0xfbt
        0x78t 0xfbt
        0x79t 0xfbt
    .end array-data

    :array_a28
    .array-data 0x2
        0x84t 0x6t
        0x81t 0x8t
        0x72t 0xfbt
        0x73t 0xfbt
        0x74t 0xfbt
        0x75t 0xfbt
    .end array-data

    :array_a32
    .array-data 0x2
        0x85t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_a3c
    .array-data 0x2
        0x86t 0x6t
        0x81t 0x8t
        0x7at 0xfbt
        0x7bt 0xfbt
        0x7ct 0xfbt
        0x7dt 0xfbt
    .end array-data

    :array_a46
    .array-data 0x2
        0x87t 0x6t
        0x81t 0x8t
        0x7et 0xfbt
        0x7ft 0xfbt
        0x80t 0xfbt
        0x81t 0xfbt
    .end array-data

    :array_a50
    .array-data 0x2
        0x88t 0x6t
        0x4t 0x8t
        0x88t 0xfbt
        0x89t 0xfbt
        0x89t 0xfbt
        0x89t 0xfbt
    .end array-data

    :array_a5a
    .array-data 0x2
        0x89t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_a64
    .array-data 0x2
        0x8at 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_a6e
    .array-data 0x2
        0x8bt 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_a78
    .array-data 0x2
        0x8ct 0x6t
        0x4t 0x8t
        0x84t 0xfbt
        0x85t 0xfbt
        0x85t 0xfbt
        0x85t 0xfbt
    .end array-data

    :array_a82
    .array-data 0x2
        0x8dt 0x6t
        0x4t 0x8t
        0x82t 0xfbt
        0x83t 0xfbt
        0x83t 0xfbt
        0x83t 0xfbt
    .end array-data

    :array_a8c
    .array-data 0x2
        0x8et 0x6t
        0x4t 0x8t
        0x86t 0xfbt
        0x87t 0xfbt
        0x83t 0xfbt
        0x83t 0xfbt
    .end array-data

    :array_a96
    .array-data 0x2
        0x8ft 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_aa0
    .array-data 0x2
        0x90t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_aaa
    .array-data 0x2
        0x91t 0x6t
        0x4t 0x8t
        0x8ct 0xfbt
        0x8dt 0xfbt
        0x8dt 0xfbt
        0x8dt 0xfbt
    .end array-data

    :array_ab4
    .array-data 0x2
        0x92t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_abe
    .array-data 0x2
        0x93t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_ac8
    .array-data 0x2
        0x94t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_ad2
    .array-data 0x2
        0x95t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_adc
    .array-data 0x2
        0x96t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_ae6
    .array-data 0x2
        0x97t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_af0
    .array-data 0x2
        0x98t 0x6t
        0x4t 0x8t
        0x8at 0xfbt
        0x8bt 0xfbt
        0x8bt 0xfbt
        0x8bt 0xfbt
    .end array-data

    :array_afa
    .array-data 0x2
        0x99t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_b04
    .array-data 0x2
        0x9at 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_b0e
    .array-data 0x2
        0x9bt 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_b18
    .array-data 0x2
        0x9ct 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_b22
    .array-data 0x2
        0x9dt 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_b2c
    .array-data 0x2
        0x9et 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_b36
    .array-data 0x2
        0x9ft 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_b40
    .array-data 0x2
        0xa0t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_b4a
    .array-data 0x2
        0xa1t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_b54
    .array-data 0x2
        0xa2t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_b5e
    .array-data 0x2
        0xa3t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_b68
    .array-data 0x2
        0xa4t 0x6t
        0x81t 0x8t
        0x6at 0xfbt
        0x6bt 0xfbt
        0x6ct 0xfbt
        0x6dt 0xfbt
    .end array-data

    :array_b72
    .array-data 0x2
        0xa5t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_b7c
    .array-data 0x2
        0xa6t 0x6t
        0x81t 0x8t
        0x6et 0xfbt
        0x6ft 0xfbt
        0x70t 0xfbt
        0x71t 0xfbt
    .end array-data

    :array_b86
    .array-data 0x2
        0xa7t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_b90
    .array-data 0x2
        0xa8t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_b9a
    .array-data 0x2
        0xa9t 0x6t
        0x81t 0x8t
        0x8et 0xfbt
        0x8ft 0xfbt
        0x90t 0xfbt
        0x91t 0xfbt
    .end array-data

    :array_ba4
    .array-data 0x2
        0xaat 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_bae
    .array-data 0x2
        0xabt 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_bb8
    .array-data 0x2
        0xact 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_bc2
    .array-data 0x2
        0xadt 0x6t
        0x81t 0x8t
        0xd3t 0xfbt
        0xd4t 0xfbt
        0xd5t 0xfbt
        0xd6t 0xfbt
    .end array-data

    :array_bcc
    .array-data 0x2
        0xaet 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_bd6
    .array-data 0x2
        0xaft 0x6t
        0x81t 0x8t
        0x92t 0xfbt
        0x93t 0xfbt
        0x94t 0xfbt
        0x95t 0xfbt
    .end array-data

    :array_be0
    .array-data 0x2
        0xb0t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_bea
    .array-data 0x2
        0xb1t 0x6t
        0x81t 0x8t
        0x9at 0xfbt
        0x9bt 0xfbt
        0x9ct 0xfbt
        0x9dt 0xfbt
    .end array-data

    :array_bf4
    .array-data 0x2
        0xb2t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_bfe
    .array-data 0x2
        0xb3t 0x6t
        0x81t 0x8t
        0x96t 0xfbt
        0x97t 0xfbt
        0x98t 0xfbt
        0x99t 0xfbt
    .end array-data

    :array_c08
    .array-data 0x2
        0xb4t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_c12
    .array-data 0x2
        0xb5t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_c1c
    .array-data 0x2
        0xb6t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_c26
    .array-data 0x2
        0xb7t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_c30
    .array-data 0x2
        0xb8t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_c3a
    .array-data 0x2
        0xb9t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_c44
    .array-data 0x2
        0xbat 0x6t
        0x4t 0x8t
        0x9et 0xfbt
        0x9ft 0xfbt
        0x9ft 0xfbt
        0x9ft 0xfbt
    .end array-data

    :array_c4e
    .array-data 0x2
        0xbbt 0x6t
        0x81t 0x8t
        0xa0t 0xfbt
        0xa1t 0xfbt
        0xa2t 0xfbt
        0xa3t 0xfbt
    .end array-data

    :array_c58
    .array-data 0x2
        0xbct 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_c62
    .array-data 0x2
        0xbdt 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_c6c
    .array-data 0x2
        0xbet 0x6t
        0x81t 0x8t
        0xaat 0xfbt
        0xabt 0xfbt
        0xact 0xfbt
        0xadt 0xfbt
    .end array-data

    :array_c76
    .array-data 0x2
        0xbft 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_c80
    .array-data 0x2
        0xc0t 0x6t
        0x4t 0x8t
        0xa4t 0xfbt
        0xa5t 0xfbt
        0xa5t 0xfbt
        0xa5t 0xfbt
    .end array-data

    :array_c8a
    .array-data 0x2
        0xc1t 0x6t
        0x81t 0x8t
        0xa6t 0xfbt
        0xa7t 0xfbt
        0xa8t 0xfbt
        0xa9t 0xfbt
    .end array-data

    :array_c94
    .array-data 0x2
        0xc2t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_c9e
    .array-data 0x2
        0xc3t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_ca8
    .array-data 0x2
        0xc4t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_cb2
    .array-data 0x2
        0xc5t 0x6t
        0x4t 0x8t
        0xe0t 0xfbt
        0xe1t 0xfbt
        0xe1t 0xfbt
        0xe1t 0xfbt
    .end array-data

    :array_cbc
    .array-data 0x2
        0xc6t 0x6t
        0x4t 0x8t
        0xd9t 0xfbt
        0xdat 0xfbt
        0xdat 0xfbt
        0xdat 0xfbt
    .end array-data

    :array_cc6
    .array-data 0x2
        0xc7t 0x6t
        0x4t 0x8t
        0xd7t 0xfbt
        0xd8t 0xfbt
        0xd8t 0xfbt
        0xd8t 0xfbt
    .end array-data

    :array_cd0
    .array-data 0x2
        0xc8t 0x6t
        0x4t 0x8t
        0xdbt 0xfbt
        0xdct 0xfbt
        0xdct 0xfbt
        0xdct 0xfbt
    .end array-data

    :array_cda
    .array-data 0x2
        0xc9t 0x6t
        0x4t 0x8t
        0xe2t 0xfbt
        0xe3t 0xfbt
        0xe3t 0xfbt
        0xe3t 0xfbt
    .end array-data

    :array_ce4
    .array-data 0x2
        0xcat 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_cee
    .array-data 0x2
        0xcbt 0x6t
        0x4t 0x8t
        0xdet 0xfbt
        0xdft 0xfbt
        0xdft 0xfbt
        0xdft 0xfbt
    .end array-data

    :array_cf8
    .array-data 0x2
        0xcct 0x6t
        0x81t 0x8t
        0xfct 0xfbt
        0xfdt 0xfbt
        0xfet 0xfbt
        0xfft 0xfbt
    .end array-data

    :array_d02
    .array-data 0x2
        0xcdt 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_d0c
    .array-data 0x2
        0xcet 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_d16
    .array-data 0x2
        0xcft 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_d20
    .array-data 0x2
        0xd0t 0x6t
        0x81t 0x8t
        0xe4t 0xfbt
        0xe5t 0xfbt
        0xe6t 0xfbt
        0xe7t 0xfbt
    .end array-data

    :array_d2a
    .array-data 0x2
        0xd1t 0x6t
        0xft 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
        0x0t 0x0t
    .end array-data

    :array_d34
    .array-data 0x2
        0xd2t 0x6t
        0x4t 0x8t
        0xaet 0xfbt
        0xaft 0xfbt
        0xaft 0xfbt
        0xaft 0xfbt
    .end array-data

    :array_d3e
    .array-data 0x2
        0xd3t 0x6t
        0x4t 0x8t
        0xb0t 0xfbt
        0xb1t 0xfbt
        0xb1t 0xfbt
        0xb1t 0xfbt
    .end array-data
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getCase(C)I
    .registers 3
    .parameter "ch"

    .prologue
    const/16 v1, 0x621

    .line 424
    if-lt p0, v1, :cond_8

    const/16 v0, 0x6d2

    if-le p0, v0, :cond_a

    .line 425
    :cond_8
    const/4 v0, 0x0

    .line 431
    :goto_9
    return v0

    :cond_a
    sget-object v0, Landroid/graphics/ArabicReshape;->allchar:[[C

    sub-int v1, p0, v1

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget-char v0, v0, v1

    goto :goto_9
.end method

.method static getShape(CI)C
    .registers 4
    .parameter "ch"
    .parameter "which_shape"

    .prologue
    .line 441
    sget-object v0, Landroid/graphics/ArabicReshape;->allchar:[[C

    const/16 v1, 0x621

    sub-int v1, p0, v1

    aget-object v0, v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-char v0, v0, v1

    return v0
.end method

.method public static reshape(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .parameter "Str"

    .prologue
    .line 238
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, Temp:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 241
    .local v7, reshapedString:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 242
    .local v1, i:I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 245
    .local v2, len:I
    const/16 p0, 0x20

    .local p0, pre_pre:C
    move v5, p0

    .line 247
    .end local p0           #pre_pre:C
    .local v5, pre_pre:C
    :goto_26
    if-ge v1, v2, :cond_137

    .line 248
    add-int/lit8 p0, v1, 0x2

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 249
    .local v4, pre:C
    add-int/lit8 p0, v1, 0x1

    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    .line 250
    .local p0, at:C
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 253
    .local v3, post:C
    invoke-static {p0}, Landroid/graphics/ArabicReshape;->getCase(C)I

    move-result v10

    .line 254
    .local v10, which_case:I
    invoke-static {v3}, Landroid/graphics/ArabicReshape;->getCase(C)I

    move-result v8

    .line 255
    .local v8, what_case_post:I
    invoke-static {v4}, Landroid/graphics/ArabicReshape;->getCase(C)I

    move-result v3

    .line 260
    .local v3, what_case_pre:I
    const/4 v6, 0x0

    .line 261
    .local v6, pre_step:I
    const/16 v9, 0xa

    if-ne v3, v9, :cond_13f

    .line 262
    add-int/lit8 v3, v1, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    .end local v3           #what_case_pre:I
    move-result v3

    .line 263
    .end local v4           #pre:C
    .local v3, pre:C
    invoke-static {v3}, Landroid/graphics/ArabicReshape;->getCase(C)I

    move-result v4

    .local v4, what_case_pre:I
    move v9, v4

    .line 265
    .end local v4           #what_case_pre:I
    .local v9, what_case_pre:I
    :goto_54
    and-int/lit16 v4, v9, 0x80

    const/16 v11, 0x80

    if-ne v4, v11, :cond_13c

    .line 266
    const/4 v4, 0x1

    .line 271
    .end local v6           #pre_step:I
    .local v4, pre_step:I
    :goto_5b
    and-int/lit8 v6, v10, 0xf

    packed-switch v6, :pswitch_data_144

    .line 400
    :pswitch_60
    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/graphics/ArabicReshape;->getShape(CI)C

    .end local v3           #pre:C
    move-result p0

    .end local p0           #at:C
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 401
    add-int/lit8 p0, v1, 0x1

    .end local v1           #i:I
    .local p0, i:I
    move v1, p0

    .line 408
    .end local p0           #i:I
    .restart local v1       #i:I
    goto :goto_26

    .line 276
    .restart local v3       #pre:C
    .local p0, at:C
    :pswitch_6c
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 278
    add-int/lit8 p0, v1, 0x1

    .end local v1           #i:I
    .local p0, i:I
    move v1, p0

    .line 279
    .end local p0           #i:I
    .restart local v1       #i:I
    goto :goto_26

    .line 282
    .local p0, at:C
    :pswitch_73
    const/4 v3, 0x0

    invoke-static {p0, v3}, Landroid/graphics/ArabicReshape;->getShape(CI)C

    .end local v3           #pre:C
    move-result p0

    .end local p0           #at:C
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 284
    add-int/lit8 p0, v1, 0x1

    .end local v1           #i:I
    .local p0, i:I
    move v1, p0

    .line 285
    .end local p0           #i:I
    .restart local v1       #i:I
    goto :goto_26

    .line 290
    .restart local v3       #pre:C
    .local p0, at:C
    :pswitch_7f
    and-int/lit8 v3, v9, 0xf

    const/4 v6, 0x3

    if-ne v3, v6, :cond_a3

    .line 291
    .end local v3           #pre:C
    add-int/lit8 v3, v1, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 293
    .restart local v3       #pre:C
    invoke-static {v3}, Landroid/graphics/ArabicReshape;->getCase(C)I

    move-result v4

    .line 294
    .end local v9           #what_case_pre:I
    .local v4, what_case_pre:I
    const/4 v3, 0x0

    .line 295
    .local v3, pre_step:I
    and-int/lit16 v4, v4, 0x80

    const/16 v6, 0x80

    if-ne v4, v6, :cond_96

    .line 296
    .end local v4           #what_case_pre:I
    const/4 v3, 0x1

    .line 299
    :cond_96
    add-int/lit8 v3, v3, 0x2

    invoke-static {p0, v3}, Landroid/graphics/ArabicReshape;->getShape(CI)C

    .end local v3           #pre_step:I
    move-result p0

    .end local p0           #at:C
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 300
    add-int/lit8 p0, v1, 0x2

    .end local v1           #i:I
    .local p0, i:I
    move v1, p0

    .line 302
    .end local p0           #i:I
    .restart local v1       #i:I
    goto :goto_26

    .line 337
    .local v4, pre_step:I
    .restart local v9       #what_case_pre:I
    .local p0, at:C
    :cond_a3
    invoke-static {p0, v4}, Landroid/graphics/ArabicReshape;->getShape(CI)C

    move-result p0

    .end local p0           #at:C
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 p0, v1, 0x1

    .end local v1           #i:I
    .local p0, i:I
    move v1, p0

    .line 339
    .end local p0           #i:I
    .restart local v1       #i:I
    goto/16 :goto_26

    .line 344
    .local v3, pre:C
    .local p0, at:C
    :pswitch_af
    and-int/lit16 v3, v8, 0x800

    const/16 v6, 0x800

    if-ne v3, v6, :cond_c3

    .line 345
    .end local v3           #pre:C
    add-int/lit8 v3, v4, 0x2

    invoke-static {p0, v3}, Landroid/graphics/ArabicReshape;->getShape(CI)C

    move-result p0

    .end local p0           #at:C
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 346
    add-int/lit8 p0, v1, 0x1

    .end local v1           #i:I
    .local p0, i:I
    move v1, p0

    .line 347
    .end local p0           #i:I
    .restart local v1       #i:I
    goto/16 :goto_26

    .line 350
    .local p0, at:C
    :cond_c3
    const/16 v3, 0xc

    if-ne v8, v3, :cond_d3

    .line 351
    invoke-static {p0, v4}, Landroid/graphics/ArabicReshape;->getShape(CI)C

    move-result p0

    .end local p0           #at:C
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 352
    add-int/lit8 p0, v1, 0x1

    .end local v1           #i:I
    .local p0, i:I
    move v1, p0

    .line 353
    .end local p0           #i:I
    .restart local v1       #i:I
    goto/16 :goto_26

    .line 356
    .local p0, at:C
    :cond_d3
    const/16 v3, 0xa

    if-ne v8, v3, :cond_101

    .line 357
    add-int/lit8 v3, v1, 0x3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 358
    .local v3, post_post:C
    invoke-static {v3}, Landroid/graphics/ArabicReshape;->getCase(C)I

    move-result v3

    .line 359
    .local v3, what_case_post_post:I
    and-int/lit16 v3, v3, 0x800

    const/16 v6, 0x800

    if-ne v3, v6, :cond_f5

    .line 360
    .end local v3           #what_case_post_post:I
    add-int/lit8 v3, v4, 0x2

    invoke-static {p0, v3}, Landroid/graphics/ArabicReshape;->getShape(CI)C

    move-result p0

    .end local p0           #at:C
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 361
    add-int/lit8 p0, v1, 0x1

    .end local v1           #i:I
    .local p0, i:I
    move v1, p0

    .line 362
    .end local p0           #i:I
    .restart local v1       #i:I
    goto/16 :goto_26

    .line 365
    .local p0, at:C
    :cond_f5
    invoke-static {p0, v4}, Landroid/graphics/ArabicReshape;->getShape(CI)C

    move-result p0

    .end local p0           #at:C
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    add-int/lit8 p0, v1, 0x1

    .end local v1           #i:I
    .local p0, i:I
    move v1, p0

    .line 367
    .end local p0           #i:I
    .restart local v1       #i:I
    goto/16 :goto_26

    .line 376
    .local p0, at:C
    :cond_101
    invoke-static {p0, v4}, Landroid/graphics/ArabicReshape;->getShape(CI)C

    move-result p0

    .end local p0           #at:C
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 377
    add-int/lit8 p0, v1, 0x1

    .end local v1           #i:I
    .local p0, i:I
    move v1, p0

    .line 378
    .end local p0           #i:I
    .restart local v1       #i:I
    goto/16 :goto_26

    .line 383
    .local v3, pre:C
    .local p0, at:C
    :pswitch_10d
    invoke-static {p0, v4}, Landroid/graphics/ArabicReshape;->getShape(CI)C

    move-result p0

    .end local p0           #at:C
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    add-int/lit8 p0, v1, 0x1

    .end local v1           #i:I
    .local p0, i:I
    move v1, p0

    .line 385
    .end local p0           #i:I
    .restart local v1       #i:I
    goto/16 :goto_26

    .line 387
    .local p0, at:C
    :pswitch_119
    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/graphics/ArabicReshape;->getShape(CI)C

    .end local v4           #pre_step:I
    move-result p0

    .end local p0           #at:C
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    add-int/lit8 p0, v1, 0x1

    .line 389
    .end local v1           #i:I
    .local p0, i:I
    move v1, v3

    .end local v5           #pre_pre:C
    .local v1, pre_pre:C
    move v5, v1

    .end local v1           #pre_pre:C
    .restart local v5       #pre_pre:C
    move v1, p0

    .line 390
    .end local p0           #i:I
    .local v1, i:I
    goto/16 :goto_26

    .line 392
    .restart local v4       #pre_step:I
    .local p0, at:C
    :pswitch_128
    const/4 v4, 0x0

    invoke-static {p0, v4}, Landroid/graphics/ArabicReshape;->getShape(CI)C

    .end local v4           #pre_step:I
    move-result p0

    .end local p0           #at:C
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 393
    add-int/lit8 p0, v1, 0x1

    .line 394
    .end local v1           #i:I
    .local p0, i:I
    move v1, v3

    .end local v5           #pre_pre:C
    .local v1, pre_pre:C
    move v5, v1

    .end local v1           #pre_pre:C
    .restart local v5       #pre_pre:C
    move v1, p0

    .line 395
    .end local p0           #i:I
    .local v1, i:I
    goto/16 :goto_26

    .line 410
    .end local v3           #pre:C
    .end local v8           #what_case_post:I
    .end local v9           #what_case_pre:I
    .end local v10           #which_case:I
    :cond_137
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .restart local v3       #pre:C
    .restart local v6       #pre_step:I
    .restart local v8       #what_case_post:I
    .restart local v9       #what_case_pre:I
    .restart local v10       #which_case:I
    .local p0, at:C
    :cond_13c
    move v4, v6

    .end local v6           #pre_step:I
    .restart local v4       #pre_step:I
    goto/16 :goto_5b

    .end local v9           #what_case_pre:I
    .local v3, what_case_pre:I
    .local v4, pre:C
    .restart local v6       #pre_step:I
    :cond_13f
    move v9, v3

    .end local v3           #what_case_pre:I
    .restart local v9       #what_case_pre:I
    move v3, v4

    .end local v4           #pre:C
    .local v3, pre:C
    goto/16 :goto_54

    .line 271
    nop

    :pswitch_data_144
    .packed-switch 0x0
        :pswitch_6c
        :pswitch_af
        :pswitch_60
        :pswitch_af
        :pswitch_10d
        :pswitch_60
        :pswitch_7f
        :pswitch_73
        :pswitch_73
        :pswitch_60
        :pswitch_119
        :pswitch_60
        :pswitch_128
        :pswitch_60
        :pswitch_60
        :pswitch_6c
    .end packed-switch
.end method
