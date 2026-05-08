
package Paws::OpenSearch::UpdatePackageScope;
  use Moose;
  has Operation => (is => 'ro', isa => 'Str', required => 1);
  has PackageID => (is => 'ro', isa => 'Str', required => 1);
  has PackageUserList => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdatePackageScope');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/packages/updateScope');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::UpdatePackageScopeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::UpdatePackageScope - Arguments for method UpdatePackageScope on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdatePackageScope on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method UpdatePackageScope.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdatePackageScope.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $UpdatePackageScopeResponse = $es->UpdatePackageScope(
      Operation       => 'ADD',
      PackageID       => 'MyPackageID',
      PackageUserList => [
        'MyPackageUser', ...    # min: 6, max: 12
      ],

    );

    # Results:
    my $Operation       = $UpdatePackageScopeResponse->Operation;
    my $PackageID       = $UpdatePackageScopeResponse->PackageID;
    my $PackageUserList = $UpdatePackageScopeResponse->PackageUserList;

    # Returns a L<Paws::OpenSearch::UpdatePackageScopeResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Operation => Str

The operation to perform on the package scope (e.g.,
add/remove/override users).

Valid values are: C<"ADD">, C<"OVERRIDE">, C<"REMOVE">

=head2 B<REQUIRED> PackageID => Str

ID of the package whose scope is being updated.



=head2 B<REQUIRED> PackageUserList => ArrayRef[Str|Undef]

List of users to be added or removed from the package scope.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdatePackageScope in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

