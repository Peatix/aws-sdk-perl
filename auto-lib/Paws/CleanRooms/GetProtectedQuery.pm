
package Paws::CleanRooms::GetProtectedQuery;
  use Moose;
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has ProtectedQueryIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'protectedQueryIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetProtectedQuery');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/protectedQueries/{protectedQueryIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::GetProtectedQueryOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::GetProtectedQuery - Arguments for method GetProtectedQuery on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetProtectedQuery on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method GetProtectedQuery.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetProtectedQuery.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $GetProtectedQueryOutput = $cleanrooms->GetProtectedQuery(
      MembershipIdentifier     => 'MyMembershipIdentifier',
      ProtectedQueryIdentifier => 'MyProtectedQueryIdentifier',

    );

    # Results:
    my $ProtectedQuery = $GetProtectedQueryOutput->ProtectedQuery;

    # Returns a L<Paws::CleanRooms::GetProtectedQueryOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/GetProtectedQuery>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MembershipIdentifier => Str

The identifier for a membership in a protected query instance.



=head2 B<REQUIRED> ProtectedQueryIdentifier => Str

The identifier for a protected query instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetProtectedQuery in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

