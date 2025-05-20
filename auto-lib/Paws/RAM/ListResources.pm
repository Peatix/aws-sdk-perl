
package Paws::RAM::ListResources;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Principal => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'principal');
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceArns');
  has ResourceOwner => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceOwner', required => 1);
  has ResourceRegionScope => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceRegionScope');
  has ResourceShareArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceShareArns');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListResources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listresources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::ListResourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ListResources - Arguments for method ListResources on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListResources on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method ListResources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListResources.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $ListResourcesResponse = $ram->ListResources(
      ResourceOwner       => 'SELF',
      MaxResults          => 1,                      # OPTIONAL
      NextToken           => 'MyString',             # OPTIONAL
      Principal           => 'MyString',             # OPTIONAL
      ResourceArns        => [ 'MyString', ... ],    # OPTIONAL
      ResourceRegionScope => 'ALL',                  # OPTIONAL
      ResourceShareArns   => [ 'MyString', ... ],    # OPTIONAL
      ResourceType        => 'MyString',             # OPTIONAL
    );

    # Results:
    my $NextToken = $ListResourcesResponse->NextToken;
    my $Resources = $ListResourcesResponse->Resources;

    # Returns a L<Paws::RAM::ListResourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/ListResources>

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



=head2 Principal => Str

Specifies that you want to list only the resource shares that are
associated with the specified principal.



=head2 ResourceArns => ArrayRef[Str|Undef]

Specifies that you want to list only the resource shares that include
resources with the specified Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).



=head2 B<REQUIRED> ResourceOwner => Str

Specifies that you want to list only the resource shares that match the
following:

=over

=item *

B<C<SELF> > E<ndash> resources that your account shares with other
accounts

=item *

B<C<OTHER-ACCOUNTS> > E<ndash> resources that other accounts share with
your account

=back


Valid values are: C<"SELF">, C<"OTHER-ACCOUNTS">

=head2 ResourceRegionScope => Str

Specifies that you want the results to include only resources that have
the specified scope.

=over

=item *

C<ALL> E<ndash> the results include both global and regional resources
or resource types.

=item *

C<GLOBAL> E<ndash> the results include only global resources or
resource types.

=item *

C<REGIONAL> E<ndash> the results include only regional resources or
resource types.

=back

The default value is C<ALL>.

Valid values are: C<"ALL">, C<"REGIONAL">, C<"GLOBAL">

=head2 ResourceShareArns => ArrayRef[Str|Undef]

Specifies that you want to list only resources in the resource shares
identified by the specified Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html).



=head2 ResourceType => Str

Specifies that you want to list only the resource shares that include
resources of the specified resource type.

For valid values, query the ListResourceTypes operation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListResources in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

