
package Paws::B2bi::ListProfiles;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListProfiles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::B2bi::ListProfilesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::ListProfiles - Arguments for method ListProfiles on L<Paws::B2bi>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListProfiles on the
L<AWS B2B Data Interchange|Paws::B2bi> service. Use the attributes of this class
as arguments to method ListProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListProfiles.

=head1 SYNOPSIS

    my $b2bi = Paws->service('B2bi');
    my $ListProfilesResponse = $b2bi->ListProfiles(
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyPageToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListProfilesResponse->NextToken;
    my $Profiles  = $ListProfilesResponse->Profiles;

    # Returns a L<Paws::B2bi::ListProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/b2bi/ListProfiles>

=head1 ATTRIBUTES


=head2 MaxResults => Int

Specifies the maximum number of profiles to return.



=head2 NextToken => Str

When additional results are obtained from the command, a C<NextToken>
parameter is returned in the output. You can then pass the C<NextToken>
parameter in a subsequent command to continue listing additional
resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListProfiles in L<Paws::B2bi>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

