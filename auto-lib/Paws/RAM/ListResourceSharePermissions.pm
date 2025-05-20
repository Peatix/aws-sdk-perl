
package Paws::RAM::ListResourceSharePermissions;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceShareArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceShareArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResourceSharePermissions');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listresourcesharepermissions');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::ListResourceSharePermissionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ListResourceSharePermissions - Arguments for method ListResourceSharePermissions on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResourceSharePermissions on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method ListResourceSharePermissions.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResourceSharePermissions.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $ListResourceSharePermissionsResponse =
      $ram->ListResourceSharePermissions(
      ResourceShareArn => 'MyString',
      MaxResults       => 1,             # OPTIONAL
      NextToken        => 'MyString',    # OPTIONAL
      );

    # Results:
    my $NextToken   = $ListResourceSharePermissionsResponse->NextToken;
    my $Permissions = $ListResourceSharePermissionsResponse->Permissions;

    # Returns a L<Paws::RAM::ListResourceSharePermissionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/ListResourceSharePermissions>

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



=head2 B<REQUIRED> ResourceShareArn => Str

Specifies the Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the resource share for which you want to retrieve the associated
permissions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResourceSharePermissions in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

