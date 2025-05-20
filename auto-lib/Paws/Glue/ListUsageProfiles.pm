
package Paws::Glue::ListUsageProfiles;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUsageProfiles');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::ListUsageProfilesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::ListUsageProfiles - Arguments for method ListUsageProfiles on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUsageProfiles on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method ListUsageProfiles.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUsageProfiles.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $ListUsageProfilesResponse = $glue->ListUsageProfiles(
      MaxResults => 1,                         # OPTIONAL
      NextToken  => 'MyOrchestrationToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListUsageProfilesResponse->NextToken;
    my $Profiles  = $ListUsageProfilesResponse->Profiles;

    # Returns a L<Paws::Glue::ListUsageProfilesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/ListUsageProfiles>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of usage profiles to return in a single response.



=head2 NextToken => Str

A continuation token, included if this is a continuation call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUsageProfiles in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

