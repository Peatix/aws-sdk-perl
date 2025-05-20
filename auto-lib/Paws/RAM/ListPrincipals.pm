
package Paws::RAM::ListPrincipals;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Principals => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'principals');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn');
  has ResourceOwner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceOwner', required => 1);
  has ResourceShareArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceShareArns');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPrincipals');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listprincipals');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::ListPrincipalsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ListPrincipals - Arguments for method ListPrincipals on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPrincipals on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method ListPrincipals.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPrincipals.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $ListPrincipalsResponse = $ram->ListPrincipals(
      ResourceOwner     => 'SELF',
      MaxResults        => 1,                      # OPTIONAL
      NextToken         => 'MyString',             # OPTIONAL
      Principals        => [ 'MyString', ... ],    # OPTIONAL
      ResourceArn       => 'MyString',             # OPTIONAL
      ResourceShareArns => [ 'MyString', ... ],    # OPTIONAL
      ResourceType      => 'MyString',             # OPTIONAL
    );

    # Results:
    my $NextToken  = $ListPrincipalsResponse->NextToken;
    my $Principals = $ListPrincipalsResponse->Principals;

    # Returns a L<Paws::RAM::ListPrincipalsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/ListPrincipals>

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



=head2 Principals => ArrayRef[Str|Undef]

Specifies that you want to list information for only the listed
principals.

You can include the following values:

=over

=item *

An Amazon Web Services account ID, for example: C<123456789012>

=item *

An Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of an organization in Organizations, for example:
C<organizations::123456789012:organization/o-exampleorgid>

=item *

An ARN of an organizational unit (OU) in Organizations, for example:
C<organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123>

=item *

An ARN of an IAM role, for example: C<iam::123456789012:role/rolename>

=item *

An ARN of an IAM user, for example: C<iam::123456789012user/username>

=back

Not all resource types can be shared with IAM roles and users. For more
information, see Sharing with IAM roles and users
(https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types)
in the I<Resource Access Manager User Guide>.



=head2 ResourceArn => Str

Specifies that you want to list principal information for the resource
share with the specified Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).



=head2 B<REQUIRED> ResourceOwner => Str

Specifies that you want to list information for only resource shares
that match the following:

=over

=item *

B<C<SELF> > E<ndash> principals that your account is sharing resources
with

=item *

B<C<OTHER-ACCOUNTS> > E<ndash> principals that are sharing resources
with your account

=back


Valid values are: C<"SELF">, C<"OTHER-ACCOUNTS">

=head2 ResourceShareArns => ArrayRef[Str|Undef]

Specifies that you want to list information for only principals
associated with the resource shares specified by a list the Amazon
Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).



=head2 ResourceType => Str

Specifies that you want to list information for only principals
associated with resource shares that include the specified resource
type.

For a list of valid values, query the ListResourceTypes operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPrincipals in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

