
package Paws::RAM::GetResourceShares;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PermissionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'permissionArn');
  has PermissionVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'permissionVersion');
  has ResourceOwner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceOwner', required => 1);
  has ResourceShareArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceShareArns');
  has ResourceShareStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceShareStatus');
  has TagFilters => (is => 'ro', isa => 'ArrayRef[Paws::RAM::TagFilter]', traits => ['NameInRequest'], request_name => 'tagFilters');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetResourceShares');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getresourceshares');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::GetResourceSharesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::GetResourceShares - Arguments for method GetResourceShares on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetResourceShares on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method GetResourceShares.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetResourceShares.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $GetResourceSharesResponse = $ram->GetResourceShares(
      ResourceOwner       => 'SELF',
      MaxResults          => 1,                      # OPTIONAL
      Name                => 'MyString',             # OPTIONAL
      NextToken           => 'MyString',             # OPTIONAL
      PermissionArn       => 'MyString',             # OPTIONAL
      PermissionVersion   => 1,                      # OPTIONAL
      ResourceShareArns   => [ 'MyString', ... ],    # OPTIONAL
      ResourceShareStatus => 'PENDING',              # OPTIONAL
      TagFilters          => [
        {
          TagKey    => 'MyTagKey',               # OPTIONAL
          TagValues => [ 'MyTagValue', ... ],    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken      = $GetResourceSharesResponse->NextToken;
    my $ResourceShares = $GetResourceSharesResponse->ResourceShares;

    # Returns a L<Paws::RAM::GetResourceSharesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/GetResourceShares>

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



=head2 Name => Str

Specifies the name of an individual resource share that you want to
retrieve details about.



=head2 NextToken => Str

Specifies that you want to receive the next page of results. Valid only
if you received a C<NextToken> response in the previous request. If you
did, it indicates that more output is available. Set this parameter to
the value provided by the previous call's C<NextToken> response to
request the next page of results.



=head2 PermissionArn => Str

Specifies that you want to retrieve details of only those resource
shares that use the managed permission with this Amazon Resource Name
(ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).



=head2 PermissionVersion => Int

Specifies that you want to retrieve details for only those resource
shares that use the specified version of the managed permission.



=head2 B<REQUIRED> ResourceOwner => Str

Specifies that you want to retrieve details of only those resource
shares that match the following:

=over

=item *

B<C<SELF> > E<ndash> resource shares that your account shares with
other accounts

=item *

B<C<OTHER-ACCOUNTS> > E<ndash> resource shares that other accounts
share with your account

=back


Valid values are: C<"SELF">, C<"OTHER-ACCOUNTS">

=head2 ResourceShareArns => ArrayRef[Str|Undef]

Specifies the Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of individual resource shares that you want information about.



=head2 ResourceShareStatus => Str

Specifies that you want to retrieve details of only those resource
shares that have this status.

Valid values are: C<"PENDING">, C<"ACTIVE">, C<"FAILED">, C<"DELETING">, C<"DELETED">

=head2 TagFilters => ArrayRef[L<Paws::RAM::TagFilter>]

Specifies that you want to retrieve details of only those resource
shares that match the specified tag keys and values.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetResourceShares in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

