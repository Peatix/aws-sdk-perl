
package Paws::CleanRooms::BatchGetSchema;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'collaborationIdentifier', required => 1);
  has Names => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'names', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetSchema');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/collaborations/{collaborationIdentifier}/batch-schema');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::BatchGetSchemaOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::BatchGetSchema - Arguments for method BatchGetSchema on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetSchema on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method BatchGetSchema.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetSchema.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $BatchGetSchemaOutput = $cleanrooms->BatchGetSchema(
      CollaborationIdentifier => 'MyCollaborationIdentifier',
      Names                   => [
        'MyTableAlias', ...    # max: 128
      ],

    );

    # Results:
    my $Errors  = $BatchGetSchemaOutput->Errors;
    my $Schemas = $BatchGetSchemaOutput->Schemas;

    # Returns a L<Paws::CleanRooms::BatchGetSchemaOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/BatchGetSchema>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

A unique identifier for the collaboration that the schemas belong to.
Currently accepts collaboration ID.



=head2 B<REQUIRED> Names => ArrayRef[Str|Undef]

The names for the schema objects to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetSchema in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

