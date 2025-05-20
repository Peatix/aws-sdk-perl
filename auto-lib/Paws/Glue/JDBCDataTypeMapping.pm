package Paws::Glue::JDBCDataTypeMapping;
  use Moose;
  with 'Paws::API::MapParser';

  use MooseX::ClassAttribute;
  class_has xml_keys =>(is => 'ro', default => 'key');
  class_has xml_values =>(is => 'ro', default => 'value');

  has ARRAY => (is => 'ro', isa => 'Str');
  has BIGINT => (is => 'ro', isa => 'Str');
  has BINARY => (is => 'ro', isa => 'Str');
  has BIT => (is => 'ro', isa => 'Str');
  has BLOB => (is => 'ro', isa => 'Str');
  has BOOLEAN => (is => 'ro', isa => 'Str');
  has CHAR => (is => 'ro', isa => 'Str');
  has CLOB => (is => 'ro', isa => 'Str');
  has DATALINK => (is => 'ro', isa => 'Str');
  has DATE => (is => 'ro', isa => 'Str');
  has DECIMAL => (is => 'ro', isa => 'Str');
  has DISTINCT => (is => 'ro', isa => 'Str');
  has DOUBLE => (is => 'ro', isa => 'Str');
  has FLOAT => (is => 'ro', isa => 'Str');
  has INTEGER => (is => 'ro', isa => 'Str');
  has JAVA_OBJECT => (is => 'ro', isa => 'Str');
  has LONGNVARCHAR => (is => 'ro', isa => 'Str');
  has LONGVARBINARY => (is => 'ro', isa => 'Str');
  has LONGVARCHAR => (is => 'ro', isa => 'Str');
  has NCHAR => (is => 'ro', isa => 'Str');
  has NCLOB => (is => 'ro', isa => 'Str');
  has NULL => (is => 'ro', isa => 'Str');
  has NUMERIC => (is => 'ro', isa => 'Str');
  has NVARCHAR => (is => 'ro', isa => 'Str');
  has OTHER => (is => 'ro', isa => 'Str');
  has REAL => (is => 'ro', isa => 'Str');
  has REF => (is => 'ro', isa => 'Str');
  has REF_CURSOR => (is => 'ro', isa => 'Str');
  has ROWID => (is => 'ro', isa => 'Str');
  has SMALLINT => (is => 'ro', isa => 'Str');
  has SQLXML => (is => 'ro', isa => 'Str');
  has STRUCT => (is => 'ro', isa => 'Str');
  has TIME => (is => 'ro', isa => 'Str');
  has TIME_WITH_TIMEZONE => (is => 'ro', isa => 'Str');
  has TIMESTAMP => (is => 'ro', isa => 'Str');
  has TIMESTAMP_WITH_TIMEZONE => (is => 'ro', isa => 'Str');
  has TINYINT => (is => 'ro', isa => 'Str');
  has VARBINARY => (is => 'ro', isa => 'Str');
  has VARCHAR => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::JDBCDataTypeMapping

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::Glue::JDBCDataTypeMapping object:

  $service_obj->Method(Att1 => { ARRAY => $value, ..., VARCHAR => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::Glue::JDBCDataTypeMapping object:

  $result = $service_obj->Method(...);
  $result->Att1->ARRAY

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ARRAY => Str


=head2 BIGINT => Str


=head2 BINARY => Str


=head2 BIT => Str


=head2 BLOB => Str


=head2 BOOLEAN => Str


=head2 CHAR => Str


=head2 CLOB => Str


=head2 DATALINK => Str


=head2 DATE => Str


=head2 DECIMAL => Str


=head2 DISTINCT => Str


=head2 DOUBLE => Str


=head2 FLOAT => Str


=head2 INTEGER => Str


=head2 JAVA_OBJECT => Str


=head2 LONGNVARCHAR => Str


=head2 LONGVARBINARY => Str


=head2 LONGVARCHAR => Str


=head2 NCHAR => Str


=head2 NCLOB => Str


=head2 NULL => Str


=head2 NUMERIC => Str


=head2 NVARCHAR => Str


=head2 OTHER => Str


=head2 REAL => Str


=head2 REF => Str


=head2 REF_CURSOR => Str


=head2 ROWID => Str


=head2 SMALLINT => Str


=head2 SQLXML => Str


=head2 STRUCT => Str


=head2 TIME => Str


=head2 TIME_WITH_TIMEZONE => Str


=head2 TIMESTAMP => Str


=head2 TIMESTAMP_WITH_TIMEZONE => Str


=head2 TINYINT => Str


=head2 VARBINARY => Str


=head2 VARCHAR => Str



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

