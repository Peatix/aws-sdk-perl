
package Paws::SSMContacts::ListRotations;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has RotationNamePrefix => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRotations');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMContacts::ListRotationsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMContacts::ListRotations - Arguments for method ListRotations on L<Paws::SSMContacts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRotations on the
L<AWS Systems Manager Incident Manager Contacts|Paws::SSMContacts> service. Use the attributes of this class
as arguments to method ListRotations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRotations.

=head1 SYNOPSIS

    my $ssm-contacts = Paws->service('SSMContacts');
    my $ListRotationsResult = $ssm -contacts->ListRotations(
      MaxResults         => 1,                      # OPTIONAL
      NextToken          => 'MyPaginationToken',    # OPTIONAL
      RotationNamePrefix => 'MyRotationName',       # OPTIONAL
    );

    # Results:
    my $NextToken = $ListRotationsResult->NextToken;
    my $Rotations = $ListRotationsResult->Rotations;

    # Returns a L<Paws::SSMContacts::ListRotationsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-contacts/ListRotations>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of items to return for this call. The call also
returns a token that you can specify in a subsequent call to get the
next set of results.



=head2 NextToken => Str

A token to start the list. Use this token to get the next set of
results.



=head2 RotationNamePrefix => Str

A filter to include rotations in list results based on their common
prefix. For example, entering prod returns a list of all rotation names
that begin with C<prod>, such as C<production> and C<prod-1>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRotations in L<Paws::SSMContacts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

