
package Paws::Kendra::DescribeExperience;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', required => 1);
  has IndexId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeExperience');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kendra::DescribeExperienceResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeExperience - Arguments for method DescribeExperience on L<Paws::Kendra>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeExperience on the
L<AWSKendraFrontendService|Paws::Kendra> service. Use the attributes of this class
as arguments to method DescribeExperience.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeExperience.

=head1 SYNOPSIS

    my $kendra = Paws->service('Kendra');
    my $DescribeExperienceResponse = $kendra->DescribeExperience(
      Id      => 'MyExperienceId',
      IndexId => 'MyIndexId',

    );

    # Results:
    my $Configuration = $DescribeExperienceResponse->Configuration;
    my $CreatedAt     = $DescribeExperienceResponse->CreatedAt;
    my $Description   = $DescribeExperienceResponse->Description;
    my $Endpoints     = $DescribeExperienceResponse->Endpoints;
    my $ErrorMessage  = $DescribeExperienceResponse->ErrorMessage;
    my $Id            = $DescribeExperienceResponse->Id;
    my $IndexId       = $DescribeExperienceResponse->IndexId;
    my $Name          = $DescribeExperienceResponse->Name;
    my $RoleArn       = $DescribeExperienceResponse->RoleArn;
    my $Status        = $DescribeExperienceResponse->Status;
    my $UpdatedAt     = $DescribeExperienceResponse->UpdatedAt;

    # Returns a L<Paws::Kendra::DescribeExperienceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kendra/DescribeExperience>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier of your Amazon Kendra experience you want to get
information on.



=head2 B<REQUIRED> IndexId => Str

The identifier of the index for your Amazon Kendra experience.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeExperience in L<Paws::Kendra>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

