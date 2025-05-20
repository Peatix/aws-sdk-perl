
package Paws::Lightsail::GetBlueprints;
  use Moose;
  has AppCategory => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appCategory' );
  has IncludeInactive => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'includeInactive' );
  has PageToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pageToken' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBlueprints');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::GetBlueprintsResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::GetBlueprints - Arguments for method GetBlueprints on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBlueprints on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method GetBlueprints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBlueprints.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $GetBlueprintsResult = $lightsail->GetBlueprints(
      AppCategory     => 'LfR',         # OPTIONAL
      IncludeInactive => 1,             # OPTIONAL
      PageToken       => 'Mystring',    # OPTIONAL
    );

    # Results:
    my $Blueprints    = $GetBlueprintsResult->Blueprints;
    my $NextPageToken = $GetBlueprintsResult->NextPageToken;

    # Returns a L<Paws::Lightsail::GetBlueprintsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/GetBlueprints>

=head1 ATTRIBUTES


=head2 AppCategory => Str

Returns a list of blueprints that are specific to Lightsail for
Research.

You must use this parameter to view Lightsail for Research blueprints.

Valid values are: C<"LfR">

=head2 IncludeInactive => Bool

A Boolean value that indicates whether to include inactive
(unavailable) blueprints in the response of your request.



=head2 PageToken => Str

The token to advance to the next page of results from your request.

To get a page token, perform an initial C<GetBlueprints> request. If
your results are paginated, the response will return a next page token
that you can specify as the page token in a subsequent request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBlueprints in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

