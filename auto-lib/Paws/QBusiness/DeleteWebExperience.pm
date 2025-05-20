
package Paws::QBusiness::DeleteWebExperience;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has WebExperienceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'webExperienceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteWebExperience');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/experiences/{webExperienceId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::DeleteWebExperienceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::DeleteWebExperience - Arguments for method DeleteWebExperience on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteWebExperience on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method DeleteWebExperience.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteWebExperience.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $DeleteWebExperienceResponse = $qbusiness->DeleteWebExperience(
      ApplicationId   => 'MyApplicationId',
      WebExperienceId => 'MyWebExperienceId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/DeleteWebExperience>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the Amazon Q Business application linked to the
Amazon Q Business web experience.



=head2 B<REQUIRED> WebExperienceId => Str

The identifier of the Amazon Q Business web experience being deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteWebExperience in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

