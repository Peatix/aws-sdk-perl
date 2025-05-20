
package Paws::RAM::ListReplacePermissionAssociationsWork;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has WorkIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'workIds');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListReplacePermissionAssociationsWork');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listreplacepermissionassociationswork');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::ListReplacePermissionAssociationsWorkResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ListReplacePermissionAssociationsWork - Arguments for method ListReplacePermissionAssociationsWork on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListReplacePermissionAssociationsWork on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method ListReplacePermissionAssociationsWork.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListReplacePermissionAssociationsWork.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $ListReplacePermissionAssociationsWorkResponse =
      $ram->ListReplacePermissionAssociationsWork(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyString',             # OPTIONAL
      Status     => 'IN_PROGRESS',          # OPTIONAL
      WorkIds    => [ 'MyString', ... ],    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListReplacePermissionAssociationsWorkResponse->NextToken;
    my $ReplacePermissionAssociationsWorks =
      $ListReplacePermissionAssociationsWorkResponse
      ->ReplacePermissionAssociationsWorks;

 # Returns a L<Paws::RAM::ListReplacePermissionAssociationsWorkResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/ListReplacePermissionAssociationsWork>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specifies the total number of results that you want included on each
page of the response. If you do not include this parameter, it defaults
to a value that is specific to the operation. If additional items exist
beyond the number you specify, the C<NextToken> response element is
returned with a value (not null). Include the specified value as the
C<NextToken> request parameter in the next call to the operation to get
the next part of the results. Note that the service might return fewer
results than the maximum even when there are more results available.
You should check C<NextToken> after every operation to ensure that you
receive all of the results.



=head2 NextToken => Str

Specifies that you want to receive the next page of results. Valid only
if you received a C<NextToken> response in the previous request. If you
did, it indicates that more output is available. Set this parameter to
the value provided by the previous call's C<NextToken> response to
request the next page of results.



=head2 Status => Str

Specifies that you want to see only the details about requests with a
status that matches this value.

Valid values are: C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">

=head2 WorkIds => ArrayRef[Str|Undef]

A list of IDs. These values come from the C<id>field of the
C<replacePermissionAssociationsWork>structure returned by the
ReplacePermissionAssociations operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListReplacePermissionAssociationsWork in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

