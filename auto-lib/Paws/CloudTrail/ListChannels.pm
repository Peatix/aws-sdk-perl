
package Paws::CloudTrail::ListChannels;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListChannels');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudTrail::ListChannelsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListChannels - Arguments for method ListChannels on L<Paws::CloudTrail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListChannels on the
L<AWS CloudTrail|Paws::CloudTrail> service. Use the attributes of this class
as arguments to method ListChannels.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListChannels.

=head1 SYNOPSIS

    my $cloudtrail = Paws->service('CloudTrail');
    my $ListChannelsResponse = $cloudtrail->ListChannels(
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Channels  = $ListChannelsResponse->Channels;
    my $NextToken = $ListChannelsResponse->NextToken;

    # Returns a L<Paws::CloudTrail::ListChannelsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudtrail/ListChannels>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of CloudTrail channels to display on a single page.



=head2 NextToken => Str

The token to use to get the next page of results after a previous API
call. This token must be passed in with the same parameters that were
specified in the original call. For example, if the original call
specified an AttributeKey of 'Username' with a value of 'root', the
call with NextToken should include those same parameters.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListChannels in L<Paws::CloudTrail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

