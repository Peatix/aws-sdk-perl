
package Paws::RedshiftServerless::GetTrack;
  use Moose;
  has TrackName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trackName' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTrack');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RedshiftServerless::GetTrackResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::GetTrack - Arguments for method GetTrack on L<Paws::RedshiftServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTrack on the
L<Redshift Serverless|Paws::RedshiftServerless> service. Use the attributes of this class
as arguments to method GetTrack.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTrack.

=head1 SYNOPSIS

    my $redshift-serverless = Paws->service('RedshiftServerless');
    my $GetTrackResponse = $redshift -serverless->GetTrack(
      TrackName => 'MyTrackName',

    );

    # Results:
    my $Track = $GetTrackResponse->Track;

    # Returns a L<Paws::RedshiftServerless::GetTrackResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/redshift-serverless/GetTrack>

=head1 ATTRIBUTES


=head2 B<REQUIRED> TrackName => Str

The name of the track of which its version is fetched.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTrack in L<Paws::RedshiftServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

